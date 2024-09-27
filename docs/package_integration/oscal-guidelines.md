# Oscal


[OSCAL](https://pages.nist.gov/OSCAL/) is a set of standards for describing security and privacy controls for information systems. It is developed by the National Institute of Standards and Technology (NIST) and is intended to be used by organizations to automate the exchange of security and privacy control information.

UDS Packages will include an `oscal-component.yaml` file that describes the security and privacy controls that the package implements. In combination with uds-core, this file will be used to accelerate Authorizations and contribute to control response and mapping. [Lula](https://github.com/defenseunicorns/lula) is here to help us!

Gold packages will include a baseline set of [NIST 800-53 controls](https://csrc.nist.gov/pubs/sp/800/53/r5/upd1/final), specifically:
- AC-6.9
- AU-2
- AU-3
- AU-3.1
- AU-8
- AU-12
- SC-13

This command will generate an `oscal-component.yaml` file for a package that implements these controls. Once generated you can add specific responses to the controls.
```
lula generate component -c https://raw.githubusercontent.com/GSA/fedramp-automation/refs/tags/fedramp-2.0.0-oscal-1.0.4/dist/content/rev5/baselines/json/FedRAMP_rev5_MODERATE-baseline-resolved-profile_catalog.json --framework il4 --requirements ac-6.9,au-2,au-3,au-3.1,au-8,au-12,sc-13 --remarks assessment-objective -o oscal-component.yaml --component 'app-name'
```

> [!TIP]
> The baseline controls are a starting point, you should explore additional controls relevant to your package.