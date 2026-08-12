## Purpose

This guide shows how to trace flavor upgrade behavior in UDS-common from workflow trigger to flavor gating decision, and how to decide whether logic should key off git tags or published releases.

## Goal

Validate this question yourself:

- Does upgrade flavor selection use the right source of truth?

## Prereqs

- You are in the repo root.
- `gh` is installed and authenticated.
- `yq` is installed.

Quick checks:

```bash
gh auth status
yq --version
git status --short
```

## Step 1: Find where upgrade flavors are decided

Open these files first:

- `.github/workflows/test.yaml`
- `.github/workflows/callable-test.yaml`
- `.github/actions/test-flavor/action.yaml`

What to confirm:

- `test.yaml` runs the `test-flavor` action and passes `upgrade-flavors` into the callable workflow.
- `callable-test.yaml` gates upgrade jobs using `contains(inputs.upgrade-flavors, inputs.flavor)`.
- `test-flavor/action.yaml` is the single source that determines flavor allowlist for upgrade runs.

## Step 2: Inspect release/tag pipeline order

Open:

- `.github/workflows/release-common.yaml`
- `.github/workflows/release.yaml`
- `.github/workflows/callable-publish.yaml`

What to confirm:

- Tag/release metadata can be created by release automation.
- Publish jobs run separately in a flavor/arch matrix.
- A mismatch can occur if metadata exists but one matrix leg fails to publish artifact output.

## Step 3: Compare old mental model vs current behavior

Use this framing:

- Tag-based model: newest git tag implies upgrade baseline.
- Release/artifact model: newest published release and artifact availability imply upgrade baseline.

If your intent is real upgradeability, release/artifact model is safer.

## Step 4: Reproduce the check logic locally

Run the same lookup pattern used by the action:

```bash
TAG="$(gh release list --limit 1 --exclude-drafts --exclude-pre-releases --json tagName --jq '.[0].tagName' 2>/dev/null || echo '')"
echo "TAG=$TAG"
```

Expected:

- Non-empty tag means at least one published release exists.
- Empty tag should cause a clean skip path.

Extract flavors from that ref:

```bash
git show "$TAG:zarf.yaml" | yq '.components[] | select(.only | has("flavor")) | .only.flavor' | paste -s -d, -
```

Expected:

- Comma-separated flavors used for upgrade gating.

## Step 5: Validate the edge case path

Simulate no releases:

```bash
TAG=""
if [ -z "$TAG" ]; then
  echo "No releases found. Skipping step."
fi
```

Expected:

- Clean skip output.
- No command failure.

## Step 6: Follow the deeper breadcrumbs (artifact truth)

To verify artifact-level truth (stronger than release metadata), inspect:

- `tasks/upgrade.yaml`
- `tasks/pull.yaml`

What to confirm:

- Upgrade tasks already use OCI registry listing/pull as release truth.
- This supports an interpretation that upgrade checks should align with published artifacts, not raw git tags.

## Step 7: Decision rubric

Use this checklist:

- If behavior should reflect successful publish outcomes, do not use newest git tag alone.
- If behavior should reflect only source-control state, newest git tag is acceptable.
- If flavor-specific correctness matters most, verify artifact existence per flavor in OCI.

## Suggested local command set for quick reruns

```bash
# 1) latest published release tag
TAG="$(gh release list --limit 1 --exclude-drafts --exclude-pre-releases --json tagName --jq '.[0].tagName' 2>/dev/null || echo '')"

# 2) show flavors from release ref
git show "$TAG:zarf.yaml" | yq '.components[] | select(.only | has("flavor")) | .only.flavor' | paste -s -d, -

# 3) inspect upgrade gate condition quickly
rg "contains\(inputs\.upgrade-flavors, inputs\.flavor\)" .github/workflows/callable-test.yaml

# 4) inspect task-based artifact lookup
rg "registry ls|latest-package-release|create-latest-tag-bundle" tasks/upgrade.yaml tasks/pull.yaml
```

## What conclusion should you expect?

In this repo, upgrade testing language and task behavior lean toward released artifacts as the source of truth. That makes a pure latest-git-tag check fragile when publish partially fails.
