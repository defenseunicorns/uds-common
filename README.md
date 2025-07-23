# 🦄 UDS Common

[<img alt="Made for UDS" src="https://raw.githubusercontent.com/defenseunicorns/uds-common/refs/heads/main/docs/assets/made-for-uds.svg" height="20px"/>](https://github.com/defenseunicorns/uds-core)
[![Latest Release](https://img.shields.io/github/v/release/defenseunicorns/uds-common)](https://github.com/defenseunicorns/uds-common/releases)
[![Build Status](https://img.shields.io/github/actions/workflow/status/defenseunicorns/uds-common/release.yaml)](https://github.com/defenseunicorns/uds-common/actions/workflows/release.yaml)
[![OpenSSF Scorecard](https://api.securityscorecards.dev/projects/github.com/defenseunicorns/uds-common/badge)](https://api.securityscorecards.dev/projects/github.com/defenseunicorns/uds-common)

This repo acts as a UDS Package Framework that contains common configuration, tasks and documentation useful for building downstream UDS Packages.  It defines and helps consumers implement [UDS package practices](./docs/uds-packages/requirements/uds-package-requirements.md) within their specific package repositories and is intended to help streamline keeping those practices up to date over time.

## Contents

The repo itself contains:

- [UDS tasks](tasks) to maintain, build, test, validate, and publish UDS Packages.
- [Documentation](docs) on what makes a "UDS Package" a UDS Package and how to implement one for yourself.
- [Renovate configuration](config/renovate.json5) to update Helm charts, Docker images, Zarf packages and more.
- [VSCode configuration](config/.vscode) to setup syntax highlighting for different tooling in your IDE.
- [An example](.) UDS Package for Nginx that demonstrates the general structure and acts as a test for the common tasks.

## Task Usage

Common `tasks` can be included in downstream repositories and executed with `uds run`.  You can learn more about the common tasks in this repo on the [tasks README](./tasks/README.md).

## Configuration Usage

Common configuration used between repositories is located in the `config` directory and is imported via specific tool mechanisms (like Renovate's `extends` key).

## Example Usage

The example in this repository is based around Nginx and can be interacted with as you would in any other UDS Package repo - i.e. `uds run test-package`

## Contributing

Please see the [CONTRIBUTING.md](./CONTRIBUTING.md)

