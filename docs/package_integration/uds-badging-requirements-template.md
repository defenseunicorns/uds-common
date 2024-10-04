## Gold: [<img alt="Gold" src="https://raw.githubusercontent.com/defenseunicorns/uds-common/3e0fb5acd5c590c96aeb18f5941002aea4e0dbcd/docs/made-for-uds-gold.svg" height="20px"/>](https://github.com/defenseunicorns/uds-core)

- [ ] **Must** satisfy all the requirements of [Silver](https://github.com/defenseunicorns/uds-common/blob/main/docs/package_integration/uds-package-practices.md#silver) packages
- [ ] **Must** include OSCAL-component control mapping and responses for the application. see [OSCAL Guidelines](https://github.com/defenseunicorns/uds-common/blob/main/docs/package_integration/oscal-guidelines.md)
- [ ] **Must** minimize the scope and number of the exemptions to only what is absolutely required by the application
UDS Packages may make use of the [UDS Exemption custom resource](https://github.com/defenseunicorns/uds-core/blob/main/src/pepr/operator/README.md#example-uds-exemption-cr) for exempting any Pepr policies, but in doing so they Must document rationale for the exemptions
- [ ] **Must** declaratively implement any available application hardening guidelines by default (Example: [GitLab Hardening guidelines](https://docs.gitlab.com/ee/security/hardening.html))
- [ ] **Must** release a unicorn flavor package, providing a minimal CVE baseline

## Silver: [<img alt="Silver" src="https://raw.githubusercontent.com/defenseunicorns/uds-common/3e0fb5acd5c590c96aeb18f5941002aea4e0dbcd/docs/made-for-uds-silver.svg" height="20px"/>](https://github.com/defenseunicorns/uds-core)

- [ ] **Must** satisfy all the requirements of [Bronze](https://github.com/defenseunicorns/uds-common/blob/main/docs/package_integration/uds-package-practices.md#bronze) Packages
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

## Bronze: [<img alt="Bronze" src="https://raw.githubusercontent.com/defenseunicorns/uds-common/3e0fb5acd5c590c96aeb18f5941002aea4e0dbcd/docs/made-for-uds-bronze.svg" height="20px"/>](https://github.com/defenseunicorns/uds-core)

- [ ] **Should** be created from the [UDS Package Template](https://github.com/defenseunicorns/uds-package-template)
- [ ] **Must** be declaratively bundled in a [Zarf package](https://docs.zarf.dev/ref/create/)
- [ ] **Must** define any external interfaces under the `expose` key in the [UDS Package Custom Resource](https://github.com/defenseunicorns/uds-core/blob/main/docs/configuration/uds-operator.md)
- [ ] **Must** deploy and operate successfully with Istio injection enabled in the namespace.
- [ ] **Must** implement Journey testing, covering the basic user flows and features of the application (see [Testing Guidelines](https://github.com/defenseunicorns/uds-common/blob/main/docs/package_integration/testing-guidelines.md))
- [ ] **Must** implement Upgrade Testing to ensure that the current development package works when deployed over the previously released one. (see [Testing Guidelines](https://github.com/defenseunicorns/uds-common/blob/main/docs/package_integration/testing-guidelines.md))
- [ ] **Must** be capable of operating within an internet-disconnected (air-gapped) environment
- [ ] **Must** be actively maintained by the package maintainers identified in CODEOWNERS [see #CODEOWNERS section for more information](https://github.com/defenseunicorns/uds-common/blob/main/docs/package_integration/uds-package-practices.md#codeowners)
- [ ] **Must** be versioned using the UDS Package [Versioning scheme](https://github.com/defenseunicorns/uds-common/blob/main/docs/package_integration/uds-package-practices.md#versioning)
- [ ] **Must** contain documentation under a `docs` folder at the root that describes how to configure the package and outlines package dependencies.
  > This allows users of the package to learn more about exposed configuration - it is recommended to make the entrypoint for configuration configuration.md.
- [ ] **Must** have a dependency management bot (such as renovate) configured to open PRs to update the core package and support dependencies.
- [ ] **Must** release its package to the `ghcr.io/defenseunicorns/packages/<group>` namespace as the application's name (i.e. `ghcr.io/defenseunicorns/packages/uds/mattermost`).
- [ ] **Must** not make the assumption that the `expose` interfaces are accessible to the bastion or pipeline deploying the package (i.e. `*.uds.dev`).
  > If web requests need to be made they should be done through a `Job` or `./uds zarf tools kubectl exec` as appropriate.
- [ ] **Should** lint their configurations with appropriate tooling, such as [`yamllint`](https://github.com/adrienverge/yamllint) and [`zarf dev lint`](https://docs.zarf.dev/commands/zarf_dev_lint/).

## Exceptions

Add a subbullet below the task that needs the exception and provide your reasoning

- [ ] **Should** you need to provide an exception
  - ❌ **EXCEPTION:** This is an example of how to provide an exception and its reasoning