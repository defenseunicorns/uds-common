# Testing Guidelines for UDS Marketplace Apps

## Table of Contents

- [Testing Guidelines for UDS Marketplace Apps](#testing-guidelines-for-uds-marketplace-apps)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Journey Testing](#journey-testing)
    - [**Definition**](#definition)
    - [**Key Principles**](#key-principles)
    - [**Implementation Guidelines**](#implementation-guidelines)
    - [**Tools**](#tools)
  - [Upgrade Testing](#upgrade-testing)
    - [**Key Considerations**](#key-considerations)
  - [Linting and Static Analysis](#linting-and-static-analysis)
    - [**Recommended Tools**](#recommended-tools)
  - [**Best Practices**](#best-practices)
  - [**Best Practice Examples**](#best-practice-examples)
  - [Consistency Across Packages](#consistency-across-packages)
  - [Contribution and Maintenance](#contribution-and-maintenance)
  - [Related Resources](#related-resources)

## Introduction

This document outlines the testing guidelines and best practices for UDS Packages. These guidelines aim to ensure consistency, reliability, and quality across all of our packages.

## Journey Testing

Journey testing is crucial for ensuring that UDS packages function correctly within their deployment environment and integrate properly with other UDS components.

### **Definition**
A **Journey** in the context of UDS package testing is defined as:
> The minimal and least fragile way to test all features of an application that could be broken from how we deploy it.

### **Key Principles**
- Focus on testing the deployment, not the application itself (that's the upstream developer's job).
- Ensure that our deployment method doesn't break key functionalities.
- Test integration with UDS core components (e.g., Istio, Keycloak).

### **Implementation Guidelines**
- Design tests that cover essential functionality without being overly complex.
- Focus on deployment-related issues (e.g., network policies, SSO access, cluster resource access).
- Handle limitations due to licensing or other constraints by documenting them and implementing what testing is possible.

### **Tools**
- UI Testing: Playwright
- Non-UI Testing: Jest
- Custom Scripts: Bash or other scripting languages as needed

## Upgrade Testing
Ensure that the current development package works when deployed over the previously released version.

### **Key Considerations**
- Test data migration and persistence.
- Verify that configurations are properly carried over or updated.
- Check for any breaking changes in APIs or integrations.

## Linting and Static Analysis

Use appropriate tooling to ensure code quality and consistency.

### **Recommended Tools**
- [YAML Linting](https://github.com/adrienverge/yamllint): `yamllint`
- [Zarf Package Linting](https://docs.zarf.dev/commands/zarf_dev_lint/): `zarf dev lint`
- [Shellcheck](https://www.shellcheck.net/) for any bash scripts.

## **Best Practices**

1. **Consistency**: Use similar testing approaches across different UDS packages where possible.
2. **Documentation**: Clearly document what each test is checking and why.
3. **Maintenance**: Keep tests updated as the application and deployment methods evolve.
4. **CI/CD Integration**: Incorporate all types of tests into your CI/CD pipeline.
5. **Error Handling**: Ensure tests fail gracefully and provide clear error messages.
6. **Repeatability**: Ensure tests produce consistent results regardless of how many times or in what order they are executed. Design them to handle dynamic and asynchronous workloads without compromising output integrity.
7. **Performance Consideration**: Balance thoroughness with rapid developer feedback:
    - **Single package tests:** Aim for <15 minutes runtime
    - **Full CI jobs** (e.g., deploy and test): Maximum 30 minutes
    - **Large integration tests** (multiple packages): Longer durations acceptable

    > **Note:** Strive for individual package tests to complete in under 10 minutes when possible.

## **Best Practice Examples**
The following examples demonstrate best practices for implementing various types of tests in UDS packages:

- ### **Journey Tests**
    ---
    The `uds-package-gitlab` repository provides a good example of journey test implementation.
    These files demonstrate how to set up and structure end-to-end tests using Playwright, including authentication handling and test suite organization.

    - **Test Configuration**: [playwright.config.ts](https://github.com/defenseunicorns/uds-package-gitlab/blob/main/tests/playwright.config.ts)
    - **Test Suite**: [gitlab.test.ts](https://github.com/defenseunicorns/uds-package-gitlab/blob/main/tests/gitlab.test.ts)
    - **Authentication Setup**: [auth.setup.ts](https://github.com/defenseunicorns/uds-package-gitlab/blob/main/tests/auth.setup.ts)

- ### Upgrade Tests
    ---
    - The [uds-common](https://github.com/defenseunicorns/uds-common/blob/main/.github/actions/test-deploy/action.yaml) action is reused in packages.
    - Example task in the [uds-package-gitlab repository](https://github.com/defenseunicorns/uds-package-gitlab/blob/main/tasks.yaml#L48-L68)

- ### **Test Execution**
    ---
    Both `uds-package-gitlab` and `uds-package-gitlab-runner` use a `test.yaml` file to define their test execution process. These files are used by [Maru Runner](https://github.com/defenseunicorns/maru-runner), which is built into the [uds-cli tool](https://uds.defenseunicorns.com/cli/runner/).  These YAML files demonstrate how to set up and run tests locally or in CI/CD pipelines.

    - [uds-package-gitlab/tasks/test.yaml](https://github.com/defenseunicorns/uds-package-gitlab/blob/main/tasks/test.yaml)
    - [uds-package-gitlab-runner/tasks/test.yaml](https://github.com/defenseunicorns/uds-package-gitlab-runner/blob/main/tasks/test.yaml)

## Consistency Across Packages

These examples serve to codify the "Consistency" best practice. By following similar patterns across different UDS packages, we ensure a uniform approach to testing, making it easier for developers to understand and maintain tests across the ecosystem.

## Contribution and Maintenance

This document is a living guide. If you have suggestions for improvements or new best practices, please submit a PR or open an issue in the uds-common repository.

## Related Resources

- [UDS Package Practices](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-package-practices.md)
- [Development IDE Configuration](https://github.com/defenseunicorns/uds-common/blob/main/docs/development-ide-configuration.md)

---

For package-specific testing information, refer to the individual package repositories and their documentation.
