# Testing Guidelines for UDS Marketplace Apps

## Table of Contents

1. [Introduction](#introduction)
2. [Journey Testing](#journey-testing)
   - [Definition](#definition)
   - [Key Principles](#key-principles)
   - [Implementation Guidelines](#implementation-guidelines)
   - [Tools](#tools)
3. [Upgrade Testing](#upgrade-testing)
   - [Key Considerations](#key-considerations)
4. [Linting and Static Analysis](#linting-and-static-analysis)
   - [Recommended Tools](#recommended-tools)
5. [Best Practices](#best-practices)
6. [Best Practice Examples](#best-practice-examples)
   - [Journey Tests](#journey-tests)
   - [Upgrade Tests](#upgrade-tests-1)
   - [Test Execution](#test-execution)
7. [Consistency Across Packages](#consistency-across-packages)
8. [Contribution and Maintenance](#contribution-and-maintenance)
9. [Related Resources](#related-resources)

## <a name="introduction"></a>Introduction

This document outlines the testing guidelines and best practices for UDS Packages. These guidelines aim to ensure consistency, reliability, and quality across all of our packages.

## <a name="journey-testing"></a>Journey Testing

Journey testing is crucial for ensuring that UDS packages function correctly within their deployment environment and integrate properly with other UDS components.

#### <a name="definition"></a>**Definition**
A **journey** in the context of UDS package testing is defined as:
> The minimal and least fragile way to test all features of an application that could be broken from how we deploy it.

#### <a name="key-principles"></a>**Key Principles**
- Focus on testing the deployment, not the application itself (that's the upstream developer's job).
- Ensure that our deployment method doesn't break key functionalities.
- Test integration with UDS core components (e.g., Istio, Keycloak).

#### <a name="implementation-guidelines"></a>**Implementation Guidelines**
- Design tests that cover essential functionality without being overly complex.
- Focus on deployment-related issues (e.g., network policies, SSO access, cluster resource access).
- Handle limitations due to licensing or other constraints by documenting them and implementing what testing is possible.

#### <a name="tools"></a>**Tools**
- UI Testing: Playwright, Cypress
- Non-UI Testing: Jest
- Custom Scripts: Bash or other scripting languages as needed

## <a name="upgrade-testing"></a>Upgrade Testing
Ensure that the current development package works when deployed over the previously released version.

#### <a name="key-considerations"></a>**Key Considerations**
- Test data migration and persistence.
- Verify that configurations are properly carried over or updated.
- Check for any breaking changes in APIs or integrations.

## <a name="linting-and-static-analysis"></a>Linting and Static Analysis

Use appropriate tooling to ensure code quality and consistency.

#### <a name="recommended-tools"></a>**Recommended Tools**
- [YAML Linting](https://github.com/adrienverge/yamllint): `yamllint`
- [Zarf Package Linting](https://docs.zarf.dev/commands/zarf_dev_lint/): `zarf dev lint`
- [Shellcheck](https://www.shellcheck.net/) for any bash scripts.

## <a name="best-practices"></a>**Best Practices**

1. **Consistency**: Use similar testing approaches across different UDS packages where possible.
2. **Documentation**: Clearly document what each test is checking and why.
3. **Maintenance**: Keep tests updated as the application and deployment methods evolve.
4. **CI/CD Integration**: Incorporate all types of tests into your CI/CD pipeline.
5. **Error Handling**: Ensure tests fail gracefully and provide clear error messages.
6. **Idempotency**: Ensure tests produce consistent results regardless of execution order. Design them to handle dynamic and asynchronous workloads without compromising output integrity.
7. **Performance Consideration**: Balance thoroughness with rapid developer feedback:
    - **Single package tests:** Aim for <15 minutes runtime
    - **Full CI jobs** (e.g., deploy and test): Maximum 30 minutes
    - **Large integration tests** (multiple packages): Longer durations acceptable

    > **Note:** Strive for individual package tests to complete in under 10 minutes when possible.


## <a name="best-practice-examples"></a>**Best Practice Examples**
The following examples demonstrate best practices for implementing various types of tests in UDS packages:

- ### <a name="journey-tests"></a>**Journey Tests**
    ---
    The `uds-package-gitlab` repository provides a good example of journey test implementation.
    These files demonstrate how to set up and structure end-to-end tests using Playwright, including authentication handling and test suite organization.

    - **Test Configuration**: [playwright.config.ts](https://github.com/defenseunicorns/uds-package-gitlab/blob/main/tests/playwright.config.ts)
    - **Test Suite**: [gitlab.test.ts](https://github.com/defenseunicorns/uds-package-gitlab/blob/main/tests/gitlab.test.ts)
    - **Authentication Setup**: [auth.setup.ts](https://github.com/defenseunicorns/uds-package-gitlab/blob/main/tests/auth.setup.ts)

- ### <a name="upgrade-tests-1"></a>Upgrade Tests
    ---
    (TODO: Add specific examples of upgrade tests from UDS packages)

- ### <a name="test-execution"></a>**Test Execution**
    ---
    Both `uds-package-gitlab` and `uds-package-gitlab-runner` use a `test.yaml` file to define their test execution process. These files are used by [Maru Runner](https://github.com/defenseunicorns/maru-runner), which is built into the [uds-cli tool](https://uds.defenseunicorns.com/cli/runner/).  These YAML files demonstrate how to set up and run tests locally or in CI/CD pipelines.

    - [uds-package-gitlab/tasks/test.yaml](https://github.com/defenseunicorns/uds-package-gitlab/blob/main/tasks/test.yaml)
    - [uds-package-gitlab-runner/tasks/test.yaml](https://github.com/defenseunicorns/uds-package-gitlab-runner/blob/main/tasks/test.yaml)

## <a name="consistency-across-packages"></a>Consistency Across Packages

These examples serve to codify the "Consistency" best practice. By following similar patterns across different UDS packages, we ensure a uniform approach to testing, making it easier for developers to understand and maintain tests across the ecosystem.

## <a name="contribution-and-maintenance"></a>Contribution and Maintenance

This document is a living guide. If you have suggestions for improvements or new best practices, please submit a PR or open an issue in the uds-common repository.

## <a name="related-resources"></a>Related Resources

- [UDS Package Practices](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-package-practices.md)
- [Development IDE Configuration](https://github.com/defenseunicorns/uds-common/blob/main/docs/development-ide-configuration.md)

---

For package-specific testing information, refer to the individual package repositories and their documentation.