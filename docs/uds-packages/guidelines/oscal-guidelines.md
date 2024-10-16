# OSCAL: the Open Security Controls Assessment Language


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

This command will template an `oscal-component.yaml` file for a package that implements these controls. Once generated you can add specific responses to the controls.
```
lula tools template -f https://raw.githubusercontent.com/defenseunicorns/uds-common/refs/heads/main/templates/component.yaml --set .const.component.title='app name' --set .const.component.description='description of the application' -o oscal-component.yaml
```

> [!TIP]
> The baseline controls are a starting point, you should explore additional controls relevant to your package.