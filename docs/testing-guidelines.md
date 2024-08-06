# Testing Guidelines for UDS Marketplace Apps

## Introduction

This document outlines the testing guidelines and best practices for UDS Packages. These guidelines aim to ensure consistency, reliability, and quality across all of our packages.

## 1. Journey Testing

Journey testing is crucial for ensuring that UDS packages function correctly within their deployment environment and integrate properly with other UDS components.

#### **Definition**
A **journey** in the context of UDS package testing is defined as:
> The minimal and least fragile way to test all features of an application that could be broken from how we deploy it.

#### **Key Principles**
- Focus on testing the deployment, not the application itself (that's the upstream developer's job).
- Ensure that our deployment method doesn't break key functionalities.
- Test integration with UDS core components (e.g., Istio, Keycloak).

#### **Implementation Guidelines**
- Design tests that cover essential functionality without being overly complex.
- Focus on deployment-related issues (e.g., network policies, SSO access, cluster resource access).
- Handle limitations due to licensing or other constraints by documenting them and implementing what testing is possible.

#### **Tools**
- UI Testing: Playwright, Cypress
- Non-UI Testing: Jest
- Custom Scripts: Bash or other scripting languages as needed

## 2. Upgrade Testing
Ensure that the current development package works when deployed over the previously released version.

#### **Key Considerations**
- Test data migration and persistence.
- Verify that configurations are properly carried over or updated.
- Check for any breaking changes in APIs or integrations.

## 3. Linting and Static Analysis

Use appropriate tooling to ensure code quality and consistency.

#### **Recommended Tools**
- YAML Linting: `yamllint`
- Zarf Package Linting: `zarf dev lint`
- Shellcheck (https://www.shellcheck.net/) for any bash scripts

## **Best Practices**

1. **Consistency**: Use similar testing approaches across different UDS packages where possible.
2. **Documentation**: Clearly document what each test is checking and why.
3. **Maintenance**: Keep tests updated as the application and deployment methods evolve.
4. **CI/CD Integration**: Incorporate all types of tests into your CI/CD pipeline.
5. **Error Handling**: Ensure tests fail gracefully and provide clear error messages.
6. **Idempotency**: Design tests to be repeatable and produce consistent results.
7. **Performance Consideration**: While thorough, tests should not unnecessarily slow down the development process.

## **Implementation Examples**

(TODO: Add brief examples or links to exemplar implementations of journey tests, upgrade tests, and linting configurations from various UDS packages)

## **Contribution and Maintenance**

This document is a living guide. If you have suggestions for improvements or new best practices, please submit a PR or open an issue in the uds-common repository.

## **Related Resources**

- [UDS Package Practices](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-package-practices.md)
- [Development IDE Configuration](https://github.com/defenseunicorns/uds-common/blob/main/docs/development-ide-configuration.md)

---

For package-specific testing information, refer to the individual package repositories and their documentation.