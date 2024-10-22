# Common GitHub Workflows

This repository is designed to provide common workflows for downstream UDS Packages to consume and provide inputs into to run their CI checks.
This helps to ensure consistency and helps improve these repos easily over time as Renovate watches this repo for changes.

## Usage

To use these common callable workflows you add a calling workflow for each `callable-*.yaml` workflow in this repository under `.github/workflows`.
You can find examples of these in other UDS Packages or in the [`uds-package-template`](https://github.com/defenseunicorns/uds-package-template/tree/main/.github/workflows).

> [!NOTE]
> Workflows should have `validate` as the primary Job name that calls the callable workflow.  You can read more about why in the [Consistency in CI Workflow Job Naming ADR](../../adrs/0003-consistency-in-ci-workflow-job-naming.md).

### Task Entrypoints

Once you have the right workflows in your `.github/workflows` folder you will need to `include` the tasks files that are also included in the root `tasks.yaml` of this project.
You can see an example of this in other UDS Packages or in the [`uds-package-template`](https://github.com/defenseunicorns/uds-package-template/blob/main/tasks.yaml#L4)

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

You can see an example in `uds-package-sigstore`'s task file: [`ci-setup`](https://github.com/defenseunicorns/uds-package-sigstore/blob/f54e1160a6eda5be3c0aa55637efa2150b5f5152/tasks.yaml#L60)
