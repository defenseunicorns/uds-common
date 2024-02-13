# UDS Common

This repository contains common configuration and tasks used in UDS Packages for management, setup, creation, deployment, and publishing of packages and bundles.

## Task Usage

The tasks are designed to be consumed via remote task includes and GitHub Actions (WIP). It is typically easiest to include tasks in a single root level `tasks.yaml`. Includes should follow the standard remote include pattern documented by UDS CLI:

```yaml
includes:
  - deploy: https://raw.githubusercontent.com/defenseunicorns/uds-common/$TAG/tasks/deploy.yaml
```

Pinning to a specific tag of a task (rather than `main`) with renovate watching for updates is recommended since tasks do rely on dependencies like command syntax for `zarf` and `uds` as well as the published versions of `uds-core`.

## Supported Tool Versions

- UDS CLI: 0.9.0
- UDS Core: 0.12.0

NOTE: Zarf is not required for tasks in this repo, the vendored zarf (`uds zarf`) included with UDS CLI is used instead to prevent version mismatches.

## Task Files

There are multiple task files available in this repository with different objectives and required variables.

### setup.yaml

This task file includes two tasks:

- `k3d-test-cluster` sets up a k3d cluster running the `uds-core-istio-dev` package. This provides a baseline cluster with Istio and the UDS Core Pepr capabilities necessary to test against.
- `registry-login` performs a registry login and retry a max of 10 times at a desired retry interval (in seconds). It reads in variables for the task to use for the registry login parameters.  The variable inputs are:
  - `REGISTRY`: the target registry
  - `REGISTRY_USERNAME`: the username for the registry
  - `REGISTRY_PASSWORD`: the password for the registry
  - `REGISTRY_RETRY_INTERVAL`: the number in seconds to wait between retries

### create.yaml

This task file includes two tasks:

- `package`: creates a zarf package located at the base of the repository. It has a required variable of `FLAVOR` which defaults to upstream and an optional variable `ZARF_ARCHITECTURE` to override the default architecture used for creation (useful in publishing workflows).
- `test-bundle`: creates a test bundle located at the path `bundle/`. It has an optional variable for `UDS_ARCH` which can be used to override the default architecture used for creation (useful in publishing workflows). Note that this task does not create any pre-requisite zarf packages so those tasks must be run first.

### deploy.yaml

This task file includes two tasks:

- `package`: deploys a zarf package located at the base of the repository (using the regex match `zarf-package-*-${UDS_ARCH}-*.tar.zst`).
- `test-bundle`: deploys a test bundle located at the path `bundle/` (using the regex match `bundle/uds-bundle-*-${UDS_ARCH}-*.tar.zst`) and the config file located at `bundle/uds-config.yaml`.

### publish.yaml

This task file includes a single task `package` which publishes zarf package(s) located at the base of the repository. Inputs for this task:

- `FLAVOR`: the flavor of the zarf package to publish, defaults to `upstream`.
- `TARGET_REPO`: the target OCI repository to publish the zarf package to, defaults to `oci://ghcr.io/defenseunicorns/packages/uds`.
- `VERSION`: the version of the zarf package to publish with no default. This should typically be version controlled by something like release-please.

Note that this task will publish both `arm64` and `amd64` architectures, with the exception of the `registry1` flavor which will skip the `arm64` publish.

## Configuration Usage

Common configuration used between repositories is located in the `config` directory and is imported via specific tool mechanisms (like Renovate's `extends` key).
