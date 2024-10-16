# UDS Marketplace Package Integration Guide

## Introduction

This guide is intended for developers integrating applications with UDS (Unicorn Delivery Service). It provides an overview of the integration process, key considerations, and resources to ensure a smooth integration. If you are familiar with UDS Package creation, [Badging Requirements](./requirements/uds-package-requirements.md) may be more relevant.

Integrating a Package fundamentally means:
1. Creating a repository `uds-package-<name>` from [uds-package-template](https://github.com/defenseunicorns/uds-package-template)
2. Integrating the upstream Helm chart as a zarf package `zarf.yaml` to build a declarative OCI artifact
3. Adding a UDS package Custom Resource `uds-package.yaml` to integrate with UDS Core via Pepr
4. Build a 'zero CVE' package by replacing images with a `*-unicorn` flavored image

## Prerequisites

- UDS generally assumes applications are containerized and can be deployed via Kubernetes. (exceptions are possible, but rare, and require additional work e.g. KubeVirt)
- The integrator (you) should have access to the application image and deployment code.
- The "App" should have a compatible license for UDS integration (Apache 2.0 or similar) [see Licensing Considerations](#licensing-considerations).
- The "App" should have an available Helm chart which can be used for the Zarf package. If it does not have one, notify the Airgap App Store team before proceeding further.

### Licensing Considerations

- Defense Unicorns creates Apache 2.0 licensed products exclusively, see the [Open Source Policy](https://github.com/defenseunicorns/uds-common/blob/main/docs/adrs/0002-apache-2.0-for-all-uds-products.md).
- Vendors in the marketplace will carry forward their license and associated fees.
- When in doubt, ask in the #product-support channel in Slack. Legal and Business considerations are being evaluated.


## Getting Started

Before beginning the integration process, familiarize yourself with the following resources:

1. [UDS Capabilities Documentation](https://uds.defenseunicorns.com/overview/uds-structure/#uds-core-capabilities): Provides information about UDS, UDS CLI, UDS Core, and UDS Bundles.
2. [Zarf Documentation](https://docs.zarf.dev): Zarf is a tool for declarative creation & distribution of software packages.
3. [UDS Common Repository](https://github.com/defenseunicorns/uds-common): Contains information and best practices for UDS integration.
4. [UDS Applications Tracker](https://coda.io/d/Product_dGmk3eNjmm8/Applications_suCbOWqL#_lu8fEKSc): Lists many backlogged and completed applications for UDS integration.
5. Briefly review [Pepr Documentation](https://docs.pepr.dev/): it may become useful when you begin integrating with UDS Core.

## Integration Checklist

When integrating an application with UDS, consider the following requirements and suggestions:

### Step 1 - Sanity Check the Codebase

Because one of the main goals of the Airgap App Store is to provide a trusted repository of vetted, packaged apps for National Security missions, we need to ensure these packages meet certain requirements. These packages should not be obviously malware, or maintained entirely or in majority by or in a foreign or aggressor nation/state.

- [ ] Using your best judgment, run a Google search against the repository name and look for signs that it may be compromised or otherwise untrustworthy.
- [ ] Validate the contributors to the repository by entering the repository into [OSS Insight](https://ossinsight.io) and checking the `People` tab to see where the majority of contributions came from. If you see significant contributions from suspicious locations, notify the Airgap App Store team before proceeding with further integration work. For example, [Harbor](https://ossinsight.io/analyze/goharbor/harbor#people) has an overwhelming number of contributions originating from within China.

### Step 2 - Zarf Package

Your goal is to bundle the upstream Helm chart and images into a single Zarf package, defined in a `zarf.yaml`

*reminder https://docs.zarf.dev*

- [ ] Understand Zarf's [Helm Chart component primitive](https://docs.zarf.dev/ref/components/#helm-charts)
- [ ] The Command `uds zarf dev generate` may be useful to generate an initial `zarf.yaml` file for your application.
- [ ] Identify the application's images, the command `uds zarf dev find-images` may be useful.
- [ ] The application may require additional configurations at build time or runtime, consider [Zarf Component Actions](https://docs.zarf.dev/ref/examples/component-actions/)
- [ ] Start to monitor for the application reaching out to the internet For example [Sonarqube](https://github.com/defenseunicorns/uds-package-sonarqube/tree/main/src/monitoring-image) tries to download a jar file from Maven central to enable monitoring with Prometheus (it is not baked into their images) - this custom image takes a Chainguard busybox base, adds the correct jar file, and creates a simple script that calls itself "curl" that doesn't curl and instead copies the Jar file it already has to make that piece work in the Air Gap. Its basically a shim around the way the upstream chart works.

#### Checkout
Your repository has a `zarf.yaml`, you can build a single artifact with `uds zarf package create`, and deploy it to a [k3d-core-dev-slim cluster](https://github.com/defenseunicorns/uds-core?tab=readme-ov-file#uds-package-development) using `uds zarf package deploy`

### Step 3 - UDS Package

Your goal is to integrate the Zarf package application with [UDS Core](https://github.com/defenseunicorns/uds-core), using `uds-package.yaml` custom resource.

- [ ] If you haven't already, read the docs on [UDS Operator](https://uds.defenseunicorns.com/core/configuration/uds-operator/)

- [ ] [UDS Package Practices](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/requirements/uds-package-requirements.md) provides an extensive list of best practices, considerations, and tasks for a package to be "Made for UDS"

#### Checkout
Your repository has a `uds-package.yaml` manifest added to the appropriate Helm chart and you can deploy to a K3d Core Dev Slim cluster, via zarf package.

## Examples

For reference, consider these well-maintained UDS package examples:
- [UDS Package GitLab](https://github.com/defenseunicorns/uds-package-gitlab) (More complex example)
- [UDS Package Mattermost](https://github.com/defenseunicorns/uds-package-mattermost) (Simpler example)
- [UDS Common NGINX](https://github.com/defenseunicorns/uds-common)
