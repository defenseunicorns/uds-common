# Tasks

The `tasks` here are designed to be consumed via remote task includes in a single root level `tasks.yaml` in the downstream repo. Includes should follow the standard remote include pattern documented by UDS CLI:

```yaml
includes:
  - deploy: https://raw.githubusercontent.com/defenseunicorns/uds-common/$TAG/tasks/deploy.yaml
```

Pinning to a specific tag of a task (rather than `main`) with renovate watching for updates is **strongly recommended** since tasks do rely on dependencies like command syntax for `zarf` and `uds` as well as the published versions of `uds-core`.

## Supported Tool Versions

- UDS CLI: 0.39.0
- UDS Core: 1.14.0
- K3D: 5.9.0

> [!NOTE]
> Zarf is not required for tasks in this repo when using `uds` CLI, the vendored zarf (`uds zarf`) included with UDS CLI is used instead to prevent version mismatches.  If using `maru` directly you will need to look at the tasks you are including and determine whether you need to install `zarf` and/or `uds`.

## Next Mode Bundle Tasks

Set `NEXT_MODE=true` once on the outer `uds run` invocation to use UDS CLI Next bundle commands for bundle create/deploy/remove/publish/pull tasks:

```bash
uds run test-install --set NEXT_MODE=true
```

For the reusable GitHub workflows, pass it through the existing `options` input:

```yaml
with:
  options: --set NEXT_MODE=true
```

## Task Files

There are multiple task files available in this repository with different objectives and required variables.

<!-- TODO: @WSTARR - these were generated with Maru off of https://github.com/defenseunicorns/maru-runner/pull/151 - once that feature is finalized a workflow should be added to check this file for missing text -->

### [setup.yaml](./tasks/setup.yaml)

| Name | Description |
|------|-------------|
| **k3d-test-cluster** | Creates a k3d cluster for testing based on the K3d + UDS Core Slim Dev bundle |
| **k3d-full-cluster** | Creates a k3d cluster for testing based on the K3d + UDS Core Full bundle |
| **print-keycloak-admin-password** | Print the default keycloak 'admin' password to standard out (if INSECURE_ADMIN_PASSWORD_GENERATION was used on uds-core) |
| **keycloak-admin-user** | Sets up the Keycloak admin user for dev/testing if not already created |
| **print-keycloak-admin-password** | Prints out Keycloak Admin credentials |
| **keycloak-user** | Creates a Keycloak user in the UDS Realm |
| **create-doug-user** | DEPRECATED! Please consider using keycloak-user instead |

### [create.yaml](./tasks/create.yaml)

| Name | Description |
|------|-------------|
| **package** | Create the UDS Zarf Package in the repository |
| **test-bundle** | Create the test bundle (bundling package + dependencies for testing) |

### [deploy.yaml](./tasks/deploy.yaml)

| Name | Description |
|------|-------------|
| **package** | Deploy the created UDS Zarf Package |
| **test-bundle** | Deploy the created test bundle (deploying package + dependencies for testing) |

### [remove.yaml](./tasks/remove.yaml)

| Name | Description |
|------|-------------|
| **test-bundle** | Remove the deployed test bundle |

### [compliance.yaml](./tasks/compliance.yaml)

| Name | Description |
|------|-------------|
| **validate** | Deprecated: Lula Validate OSCAL Compliance |
| **evaluate** | Deprecated: Lula Evaluate multiple OSCAL Assessment Results |

### [publish.yaml](./tasks/remove.yaml)

| Name | Description |
|------|-------------|
| **package** | Publish the UDS package for the supplied architecture |
| **release-please-publish** | Publish the UDS package using release-please based workflows |
| **uds-pk-publish** | Publish the UDS package using uds-pk based workflows |
| **test-bundle** | Publish the test bundle for the supplied architecture |
| **repo** | Publish point in time repo snapshot to OCI |
| **git-to-oci** | Package git repo as OCI artifact with release notes |

### [pull.yaml](./tasks/remove.yaml)

| Name | Description |
|------|-------------|
| **latest-package-release** | Pull the last release of the UDS Package (useful for upgrade testing) |
| **latest-bundle-release** | Pull the last release of the UDS Bundle (useful for upgrade testing) |

### [upgrade.yaml](./tasks/upgrade.yaml)

| Name | Description |
|------|-------------|
| **create-latest-tag-bundle** | Creates the test bundle at the latest tag in preparation for upgrade testing |

### [utils.yaml](./tasks/utils.yaml)

| Name | Description |
|------|-------------|
| **determine-repo** | Determines the OCI repository that this flavor should go into (i.e. 'unicorn' should be private) |

### [lint.yaml](./tasks/lint.yaml)

This task file defines a set of linting commands to ensure code quality and compliance. It includes tasks to install linting tool dependencies, perform checks on YAML files and OSCAL configurations, validate shell scripts with shellcheck, and verify or add the SPDX license identifier in source files. Both the `license` and `fix-license` tasks parse a `.license_config.yaml` file in the project root directory, but will default to the Defense Unicorns dual-license if the file is not present.

#### Example `.license_config.yaml`

```yaml
license: AGPL-3.0-or-later OR LicenseRef-Defense-Unicorns-Commercial
copyright: Defense Unicorns
ignore: [] # an array of paths to ignore
```

| Name | Description |
|------|-------------|
| **deps** | Install linting tool dependencies |
| **all** | Run all linting commands |
| **renovate** | Validate Renovate configuration |
| **yaml** | Run YAML linting checks |
| **shell** | Run shellcheck on all Maru tasks, GitHub workflows, Zarf packages, and local shell scripts |
| **zarf-tools** | Reject external tool calls with Zarf equivalents in package actions |
| **license** | Lint for the SPDX license identifier being in source files |
| **fix-license** | Add the SPDX license identifier to source files |
| **tasks** | Dry run all tasks in the base tasks file |
| **helm** | Run helm lint on all Helm charts in the repository |
| **helm-template** | Dry run render all Helm charts to catch template execution errors |
| **values-generate** | Regenerate the Zarf values schema after successful generation |
| **values-check** | Check Zarf values schema freshness without changing the schema |

The `zarf-tools` task checks inline `cmd` entries in Zarf component actions for likely tool calls. It is a basic check, so it may miss some calls or flag text that does not run as a command. It does not inspect UDS task files.

The `renovate` task is opt-in and defaults to `renovate.json`.
It requires Node.js 24.11+ (24.x) and npm; Renovate is downloaded automatically.

```bash
uds run lint:renovate
uds run lint:renovate --with file=config/renovate.json5
```

#### Optional Zarf values schema checks

Like `renovate`, the `values-generate` and `values-check` tasks are opt-in and are
not included in `lint:all`. Package repositories can use them through their
existing remote include of `tasks/lint.yaml`; no local lint wrapper is needed.
Update that include to a release containing these tasks before enabling the check.

```bash
uds run lint:values-generate
uds run lint:values-check
```

Both tasks accept `path` (default `.`) and `flavor` (default `upstream`):

```bash
uds run lint:values-generate --with path=packages/irsa --with flavor=registry1
uds run lint:values-check --with path=packages/irsa --with flavor=registry1
# For a package without flavors:
uds run lint:values-check --with flavor=""
```

The schema path is read from `values.schema` in the selected package's `zarf.yaml`,
relative to the package directory. The schema file must already exist with a
valid JSON Schema declaration, as required by Zarf's schema generator. Missing
configuration, missing schema files, and generation failures fail the task rather
than silently skipping it.

`values-check` regenerates with `--delete-not-found` into a temporary file and
compares the result with the existing schema. It runs locally as well as in CI,
prints the full diff on drift, and leaves the schema unchanged. It does not
require a Git checkout or a clean working tree. `values-generate` replaces the
schema only after successful generation. Both tasks clean up temporary files.

To enable the check in the existing reusable GitHub lint workflow:

```yaml
jobs:
  lint:
    uses: defenseunicorns/uds-common/.github/workflows/callable-lint.yaml@<release>
    with:
      values-check: true
      values-path: .
      values-flavor: upstream
    secrets: inherit
```

The workflow defaults to `values-check: false`, preserving existing consumers'
lint behavior. The optional check runs after the existing lint step. Pin both the
workflow and task include to the same release containing these capabilities.

Use the same UDS CLI version locally and in CI: the tasks use its embedded Zarf
through `./zarf`, and generator versions can differ in type inference and output
formatting. The reusable lint workflow currently installs UDS CLI v0.39.0. Use
`values-generate` to produce the checked-in schema in the same stdout format used
by `values-check`, then review and commit the result. A flavor-specific schema
should be generated and checked using the same flavor.

The `shell` task accepts a space-separated `exclusion` input for directories that should be skipped by shellcheck:

```yaml
- task: lint:shell
  with:
    exclusion: ".husky vendor"
```

### [badge.yaml](./tasks/badge.yaml)

| Name | Description |
|------|-------------|
| **verify-badge** | Task Removed: Verify Badge |

### [actions.yaml](./tasks/actions.yaml)

| Name | Description |
|------|-------------|
| **authenticate-registries** | Log in to the registries for testing and publishing UDS Packages |
| **debug-output** | Print debug output from a k8s cluster |
| **clean-gh-runner** | Cleanup unneeded files to free space on a GitHub runner |
| **install-deps** | Install the runner dependencies for testing UDS Packages |
| **install-oras** | Install ORAS CLI for OCI artifact operations |
| **save-logs** | Save Pod and Node logs from a cluster and fix permissions |
| **setup-environment** | Setup the runner environment for testing UDS Packages |
| **test-deploy** | Test a deployment of a UDS package/bundle |
| **verify-badge** | Perform verification to assist with UDS badge certification |
| **determine-arch** | Determine the architecture of the current machine |
| **registry-login** | Log in to an OCI registry |
