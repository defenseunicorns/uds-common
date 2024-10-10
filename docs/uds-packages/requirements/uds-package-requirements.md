# UDS Package Standards and Badging Requirements

This document describes the standards for [<img alt="Made for UDS" src="https://raw.githubusercontent.com/defenseunicorns/uds-common/refs/heads/main/docs/assets/made-for-uds.svg" height="20px"/>](https://github.com/defenseunicorns/uds-core) badging. It is not a comprehensive guide to creating UDS Packages and assumes familiarity with the UDS ecosystem and UDS Package Custom Resource. If you are unfamiliar with these concepts, please first refer to the [package integration guide](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/guide.md) providing more detailed information.

Made for UDS Packages integrate with services and features of [UDS Core](https://github.com/defenseunicorns/uds-core), through the [UDS `Package` custom resource](https://github.com/defenseunicorns/uds-core/blob/main/src/pepr/operator/README.md#example-uds-package-cr). These packages can be one of three tiers:

[<img alt="Gold" src="https://raw.githubusercontent.com/defenseunicorns/uds-common/refs/heads/main/docs/assets/made-for-uds-gold.svg" height="20px"/>](https://github.com/defenseunicorns/uds-core), [<img alt="Silver" src="https://raw.githubusercontent.com/defenseunicorns/uds-common/refs/heads/main/docs/assets/made-for-uds-silver.svg" height="20px"/>](https://github.com/defenseunicorns/uds-core), or [<img alt="Bronze" src="https://raw.githubusercontent.com/defenseunicorns/uds-common/refs/heads/main/docs/assets/made-for-uds-bronze.svg" height="20px"/>](https://github.com/defenseunicorns/uds-core).

> [!IMPORTANT]
> Packages should aim for Gold by default and only _SETTLE_ for lesser tiers of Bronze and Silver.

> [!TIP]
> As a package creator navigates the badging levels, they may encounter scenarios that can't be resolved without changes to the upstream application. It is recommended to document these scenarios to alleviate the challenge of maintaining the package. It will not change the badging level.

> [!TIP]
> This document follows [RFC-2119](https://datatracker.ietf.org/doc/html/rfc2119) for definitions of requirement levels (e.g. **must**, **should** and **may**)

> [!TIP]
> View the following lines in it's raw format and copy these lines into a github issue for easy tracking

## Gold: [<img alt="Gold" src="https://raw.githubusercontent.com/defenseunicorns/uds-common/refs/heads/main/docs/assets/made-for-uds-gold.svg" height="20px"/>](https://github.com/defenseunicorns/uds-core)

_a Gold UDS Package implements best-effort 0-cve images, configuration hardening, and meets the unicorn guarantee out of the box with zero additional effort._

Gold Packages:

- [ ] **Must** satisfy all the requirements of [Silver](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/requirements/uds-package-requirements.md#silver) packages
- [ ] **Must** include OSCAL-component control mapping and responses for the application. see [OSCAL Guidelines](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/guidelines/oscal-guidelines.md)
- [ ] **Must** minimize the scope and number of the exemptions to only what is absolutely required by the application
UDS Packages may make use of the [UDS Exemption custom resource](https://github.com/defenseunicorns/uds-core/blob/main/src/pepr/operator/README.md#example-uds-exemption-cr) for exempting any Pepr policies, but in doing so they Must document rationale for the exemptions
- [ ] **Must** declaratively implement any available application hardening guidelines by default (Example: [GitLab Hardening guidelines](https://docs.gitlab.com/ee/security/hardening.html))
- [ ] **Must** release a unicorn flavor package, providing a minimal CVE baseline

## Silver: [<img alt="Silver" src="https://raw.githubusercontent.com/defenseunicorns/uds-common/refs/heads/main/docs/assets/made-for-uds-silver.svg" height="20px"/>](https://github.com/defenseunicorns/uds-core)

_a Silver UDS Package integrates with the main features of the UDS Operator, is documented, maintained, and can be confidently operated in production._

Silver packages:

- [ ] **Must** satisfy all the requirements of [Bronze](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/requirements/uds-package-requirements.md#bronze) Packages
- [ ] **Must** define network policies under the `allow` key as required in the [UDS Package Custom Resource](https://github.com/defenseunicorns/uds-core/blob/main/docs/configuration/uds-operator.md)
- [ ] **Must** (except if the application provides no end user login) use and create a Keycloak client through the `sso` key. [UDS Package Custom Resource](https://github.com/defenseunicorns/uds-core/blob/main/docs/configuration/uds-operator.md)
- [ ] **Must** (except if the application provides no application metrics) implement monitors for each application metrics endpoint using it's built-in chart monitors, `monitor` key, or manual monitors in the config chart.
- [ ] **Must** integrate declaratively (i.e. no clickops) with the UDS Operator
- [ ] **Should** expose all configuration (`uds.dev` CRs, additional `Secrets`/`ConfigMap`s, etc) through a Helm chart (ideally in a `chart` or `charts` directory).
  > This allows UDS bundles to override configuration with Helm overrides and enables downstream teams to fully control their bundle configurations.
- [ ] **Should** implement or allow for multiple flavors (ideally with common definitions in a common directory).
  > This allows for different images or configurations to be delivered consistently to customers.
- [ ] **Should** avoid workarounds with Istio such as disabling strict mTLS peer authentication.
- [ ] **Should** minimize network policies to specific selectors needed for Ingress/Egress traffic.
- [ ] **Should** consider security options during implementation to provide the most secure default possible (i.e. SAML w/SCIM vs OIDC).
- [ ] **Should** name the Keycloak client `<App> Login` (i.e. `Mattermost Login`) to provide login UX consistency.
- [ ] **Should** clearly mark the Keycloak client id with the group and app name `uds-<group>-<application>` (i.e. `uds-swf-mattermost`) to provide consistency in the Keycloak UI.
- [ ] **Should** limit the use of Zarf variable templates and prioritize configuring packages via Helm value overrides.
  > This ensures that the package is configured the same way that the bundle would be and avoids any side effect issues of Zarf's `###` templating.
- [ ] **May** template network policy keys to provide flexibility for delivery customers to configure.
- [ ] **May** end any generated Keycloak client secrets with `-sso` to easily locate them when querying the cluster.
- [ ] **May** template Keycloak fields to provide flexibility for delivery customers to configure.

## Bronze: [<img alt="Bronze" src="https://raw.githubusercontent.com/defenseunicorns/uds-common/refs/heads/main/docs/assets/made-for-uds-bronze.svg" height="20px"/>](https://github.com/defenseunicorns/uds-core)

_a Bronze UDS Package meets the minimum requirements and becomes compatible, but not optimal or fully integrated, with UDS. It is not ready to run in production without significant caveats._

Bronze packages:

- [ ] **Should** be created from the [UDS Package Template](https://github.com/defenseunicorns/uds-package-template)
- [ ] **Must** be declaratively bundled in a [Zarf package](https://docs.zarf.dev/ref/create/)
- [ ] **Must** define any external interfaces under the `expose` key in the [UDS Package Custom Resource](https://github.com/defenseunicorns/uds-core/blob/main/docs/configuration/uds-operator.md)
- [ ] **Must** deploy and operate successfully with Istio injection enabled in the namespace.
- [ ] **Must** implement Journey testing, covering the basic user flows and features of the application (see [Testing Guidelines](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/guidelines/testing-guidelines.md))
- [ ] **Must** implement Upgrade Testing to ensure that the current development package works when deployed over the previously released one. (see [Testing Guidelines](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/guidelines/testing-guidelines.md))
- [ ] **Must** be capable of operating within an internet-disconnected (air-gapped) environment
- [ ] **Must** be actively maintained by the package maintainers identified in CODEOWNERS [see #CODEOWNERS section for more information](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/requirements/uds-package-requirements.md#codeowners)
- [ ] **Must** be versioned using the UDS Package [Versioning scheme](https://github.com/defenseunicorns/uds-common/blob/main/docs/uds-packages/requirements/uds-package-requirements.md#versioning)
- [ ] **Must** contain documentation under a `docs` folder at the root that describes how to configure the package and outlines package dependencies.
  > This allows users of the package to learn more about exposed configuration - it is recommended to make the entrypoint for configuration configuration.md.
- [ ] **Must** have a dependency management bot (such as renovate) configured to open PRs to update the core package and support dependencies.
- [ ] **Must** release its package to the `ghcr.io/defenseunicorns/packages/<group>` namespace as the application's name (i.e. `ghcr.io/defenseunicorns/packages/uds/mattermost`).
- [ ] **Must** not make the assumption that the `expose` interfaces are accessible to the bastion or pipeline deploying the package (i.e. `*.uds.dev`).
  > If web requests need to be made they should be done through a `Job` or `./uds zarf tools kubectl exec` as appropriate.
- [ ] **Should** lint their configurations with appropriate tooling, such as [`yamllint`](https://github.com/adrienverge/yamllint) and [`zarf dev lint`](https://docs.zarf.dev/commands/zarf_dev_lint/).
- [ ] **Should** release a unicorn flavor package, providing a minimal CVE baseline

## Exceptions

Add a subbullet below the task that needs the exception and provide your reasoning

- [ ] **Should** you need to provide an exception
  - ❌ **EXCEPTION:** This is an example of how to provide an exception and its reasoning

## Badging

> [!NOTE]
> The badge should link to the `uds-core` repo and should match the height of any other badges (i.e. `20px`).

> [!NOTE]
> Additional services will be added and integration requirements will change as `uds-core` continues to evolve. UDS Package implementers **should** keep up with `uds-core` releases and changes to this document. The "Made for UDS" badge **may** be removed if a package is not updated in a timely fashion.

## Versioning

Use this section to decide how best to version a UDS Package.

- **Must** be versioned using the below example versioning scheme, or if this scheme doesn't make sense for the use case (i.e. a monorepo like [uds core](https://github.com/defenseunicorns/uds-core)) fall back to using [semantic versioning](https://semver.org/)
- **Must** be consistently versioned across flavors - this can take many forms but flavors should differ in image bases/builds not application versions.
- **Should** prepend `git` tags representing versions with a `v` to distinguish them from other tags with OCI tags left as the raw version.

### Example Versioning Scheme

When A UDS Package is clearly representing a single overarching application, even if it consists of many, and that application contains a canonical app version to track, use this scheme.

```text
<upstream-app-version>-uds.<uds-sub-version>
```

Where,

- `upstream-app-version`: is the version of the main application in the package (i.e. `17.2.1` for GitLab)
- `uds-sub-version`: is the number of releases since the last main application version bump (starting at `0`)

In practice, this results in the following for the second release of a package for version `17.2.1` of GitLab:

```text
17.2.1-uds.1
```

## CODEOWNERS

The CODEOWNERS file should address two key concerns:

1. The package is guaranteed to be maintained by a resourced team
2. During creation, the package can be built with speed - without waiting for the 'maintenance' team

Template CODEOWNERS file:

```text
/* @defenseunicorns/uds-package-maintainers
# /* @name-of-creator/s #optional during package creation to enable velocity
# /* @name-of-established-known-team #optional addition to "uds-package-maintainers"

/CODEOWNERS @defenseunicorns/uds-package-maintainers
```
