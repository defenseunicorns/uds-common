# Quick Start - UDS Packages

This Quick Start is intended to provide the most concise and direct path to creating a Bronze UDS package.

> [!TIP] Why?
> Defense Unicorns is focused on making software conveniently available to the warfighter. _wherever the mission may take them_.
>
> Creating a UDS package makes that piece of software compatible and available in the UDS ecosystem.

<p align="center">
    <img align="top" src=".images/boromir.png" alt="alt text" width="200">
    <img src=".images/wat-no-not-that-wat.png" alt="alt text" width="200">
</p>

1. `git clone https://github.com/defenseunicorns/uds-package-template.git` find and replace variables
2. `zarf dev generate -h` to generate a `zarf.yaml` file from a helm chart
   1. Replace the `common/zarf.yaml` with the generated
3. Update the `zarf.yaml` (top-level)  with the correct reference. Add the required images to the `upstream` flavor
   1. Remove the `-unicorn` flavor for now
4. Update the `bundle/uds-bundle.yaml` with the correct reference
5. `uds run dev` to create a local package, local cluster, and deploy the package
   1. troubleshoot and retry as needed
6. update the `chart/templates/uds-package.yaml` as appropriate, read [this](https://uds.defenseunicorns.com/reference/configuration/uds-operator/)
7. `uds run dev` -> troubleshoot and retry
8. `git commit && git push` Observe CI, troubleshoot and update
9.  add `-unicorn` flavor to the `zarf.yaml` push and troubleshoot failing CI
10. Add tests
11. Crosscheck the repository, understanding each file and its purpose. Update as needed
12. Crosscheck the [requirements#bronze](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/requirements/uds-package-requirements.md#bronze-) -> update as needed

## Resources

- [Guide](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/guide.md): A more comprehensive guide for those wanting a bit more than the TLDR.
- [Requirements](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/requirements/uds-package-requirements.md#uds-package-standards-and-badging-requirements): The requirements for a UDS package.
- [uds.defenseunicorns.com](https://uds.defenseunicorns.com): The UDS documentation site.

## Experimental Resources

- [Create UDS Package CLI](https://github.com/defenseunicorns/create-uds-package): A CLI to create a UDS package. _very much in alpha development, PRs and issues welcome_
- [UDS Package Creation GPT Assistant](https://chatgpt.com/g/g-675141f7d7f481919152bec2a1177888-uds-package-creation-assistant): A GPT assitant that is built from UDS package documentaiton and examples. _very much in alpha development, feedback welcome in #airgap-appstore-apps slack channel_