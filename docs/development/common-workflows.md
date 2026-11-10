# Common GitHub Workflows

This repository is designed to provide common workflows for downstream UDS Packages to consume and provide inputs into to run their CI checks.
This ensures consistency and helps improve downstream repos over time as Renovate watches this repo for changes.

## Usage

For CI checks, add a calling workflow to your repository for each applicable `callable-*.yaml` workflow in this repository under `.github/workflows`.
You can find examples of these in other UDS Packages or in the [`uds-package-template`](https://github.com/uds-packages/template/tree/main/.github/workflows).

> [!NOTE]
> Workflows should have `validate` as the primary Job name that calls the callable workflow.  You can read more about why in the [Consistency in CI Workflow Job Naming ADR](../../adrs/0003-consistency-in-ci-workflow-job-naming.md).

### Signed package releases

The [publish action](../../.github/actions/publish/action.yaml) signs each Zarf package with GitHub Actions OIDC and verifies it before publishing by default. Set `signing: "false"` in the action's `with` inputs to disable signing and verification before publishing. Run the action in a job defined in the package repository's `release.yaml`, with `id-token: write` permission. See [Reference Package's release workflow](https://github.com/uds-packages/reference-package/blob/main/.github/workflows/release.yaml) for a downstream example.

Downstream workflows reference `defenseunicorns/uds-common/.github/actions/publish@<COMMON_REF>`. Use the same UDS Common revision for the action, reusable workflows, and imported tasks. Pass registry credentials as action inputs when needed. Omit `license-key` unless the package's publishing task requires it. The callable publish workflow remains available with signing disabled by default.

`uds-pk` defaults to `"true"`. The action detects `arch` from the runner and defaults `base-repo` to `ghcr.io/<repository-owner>`, so these inputs can be omitted when the defaults apply. The `base-repo` input controls release checks. Continue passing `--set BASE_REPO=...` through `options` when the tasks need a registry override.

The remote publish action checks out the package repository, so callers do not need a separate checkout step. A local action reference such as `./.github/actions/publish` still requires checkout first, as shown in [this repository's release workflow](../../.github/workflows/release.yaml).

When migrating a package to signed releases, bump the UDS revision in `releaser.yaml` for each published flavor. Add a package-specific verification example to its README and document the first signed version for each flavor, as shown in [Reference Package's README](https://github.com/uds-packages/reference-package#verify-a-package).

#### Verify a published package

Replace the placeholders with the package version, flavor, and publishing GitHub repository:

```bash
uds zarf package verify "oci://ghcr.io/uds-packages/<PACKAGE>:<VERSION>-<FLAVOR>" \
  --certificate-identity "https://github.com/<OWNER>/<REPOSITORY>/.github/workflows/release.yaml@refs/heads/main" \
  --certificate-oidc-issuer "https://token.actions.githubusercontent.com"
```

The identity names the repository that published the package, even when the action comes from UDS Common. The standard release workflow signs from `main`. Verification checks package checksums, the signature, and its Rekor transparency-log proof. You can also provide a local package archive instead of an OCI reference, or add `--architecture amd64` or `--architecture arm64` to select a build.

For the `unicorn` flavor, use `oci://ghcr.io/uds-packages/private/<PACKAGE>:<VERSION>-unicorn` as the package source.

#### Verify published packages in a bundle

For a signed package entry in a legacy `uds-bundle.yaml`, add:

```yaml
keylessVerification:
  certificateIdentity: https://github.com/<OWNER>/<REPOSITORY>/.github/workflows/release.yaml@refs/heads/main
  certificateOIDCIssuer: https://token.actions.githubusercontent.com
```

For a signed package entry in a Next `bundle.uds.hcl`, use:

```hcl
signature_verification {
  keyless {
    certificate_identity    = "https://github.com/<OWNER>/<REPOSITORY>/.github/workflows/release.yaml@refs/heads/main"
    certificate_oidc_issuer = "https://token.actions.githubusercontent.com"
  }
}
```

These settings apply to signed releases. Local test packages are built before signing, so Next test bundles keep `signature_verification { verify = false }` for those unsigned packages.

### Task Entrypoints

Once you have the right workflows in your `.github/workflows` folder you will need to `include` the tasks files that are also included in the root `tasks.yaml` of this project.
You can see an example of this in other UDS Packages or in the [`uds-package-template`](https://github.com/uds-packages/template/tree/main/tasks)

You will also need to add the following tasks to your root `tasks.yaml`:

#### `test-install`

This creates the package, sets up a cluster, deploys the package (in a bundle) and runs the appropriate end to end tests for your package.

You can see an example in this repo's task file: [`test-install`](../../../tasks.yaml)

#### `test-upgrade`

This sets up a cluster, deploys the latest released package (in a bundle), creates the current package, deploys the current package (in a bundle) and runs the appropriate end to end tests for your package.

You can see an example in this repo's task file: [`test-upgrade`](../../../tasks.yaml)

#### `publish-release`

This creates the package, performs a `test-install` and publishes the package (and any other artifacts like bundles, images, or adjacent packages).

You can see an example in this repo's task file: [`publish-release`](../../../tasks.yaml)

#### `ci-setup` (optional)

This sets up any necessary dependencies on the host for this specific package - these could be CLI clients used for testing, or specific configuration changes needed to make the app run.

### License Keys

License keys are optional. Packages that do not consume one should omit the `license-key` input and do not need a `LICENSE_KEY` repository secret.

For packages that require a license, create the `LICENSE_KEY` repository secret and pass it explicitly in the publish action's `with` block:

```yaml
with:
  flavor: ${{ matrix.flavor }}
  license-key: ${{ secrets.LICENSE_KEY }}
```

The publish action passes this input to the package's publishing task as `LICENSE_KEY`. The callable test and publish workflows also accept `LICENSE_KEY` as an optional workflow secret.

The License Key can then be consumed within a UDS Task. You can see an example UDS Task below that consumes the key and outputs it to a `uds-config.yaml`:
```yaml
tasks:
  - name: all
    actions:
      - task: license_file

  - name: license_file
    actions:
      - description: Write LICENSE_KEY from LICENSE_KEY env var to uds-config.yaml
        cmd: |
          # Export the env var so yq can use strenv()
          export LICENSE_KEY="$LICENSE_KEY"

          # Write into variables.idcommand.LICENSE_KEY
          yq -i '.variables.idcommand.LICENSE_KEY = strenv(LICENSE_KEY)' uds-config.yaml
        mute: true
        dir: bundle
```
