# UDS Common GitLab CI Components

This folder contains the GitLab CI Components for UDS Common, analogous to the GitHub callable workflows under the `./github/workflows` directory. The included components are as follows:

1. Lint
1. Commitlint
1. Test
1. Publish
1. Scorecard
1. Deploy

The .gitlab-ci.yml at the root of this repo serves as an example and test of how to call these components. That being said, a general example of how to include these components in a GitLab `uds-package` is as follows:

```yaml
include:
  # include the component from a published tag of uds-common
  - component: $CI_SERVER_FQDN/path/to/uds-common/commitlint@0.0.0
  - component: $CI_SERVER_FQDN/path/to/uds-common/lint@0.0.0
  - component: $CI_SERVER_FQDN/path/to/uds-common/test@0.0.0
    inputs:
      flavor: $FLAVOR
      type: $TYPE
      runs-on: gitlab-runner-4c-${ARCH}
  - component: $CI_SERVER_FQDN/path/to/uds-common/publish@0.0.0
    inputs:
      flavor: $FLAVOR
      runs-on: gitlab-runner-4c-${ARCH}
  - component: $CI_SERVER_FQDN/path/to/uds-common/deploy@0.0.0
    inputs:
      environment: dev
# Define a matrix for the test job to follow for the flavors that exist for your package
test:
  parallel:
    matrix:
      - FLAVOR: [upstream, unicorn]
        ARCH: [amd64, arm64]
        TYPE: [install, upgrade]
      - FLAVOR: [registry1]
        ARCH: [amd64]
        TYPE: [install, upgrade]

# Define matrix for publish job of flavors and architectures
publish:
  parallel:
    matrix:
      - FLAVOR: [upstream, unicorn]
        ARCH: [amd64, arm64]
      - FLAVOR: [registry1]
        ARCH: [amd64]

# Example deploy job for a prototype environment where the kube context is set up
deploy:dev:
  before_script:
    - aws eks update-kubeconfig --region xxx --name xxx
  rules:
    - if: $CI_COMMIT_BRANCH == $CI_DEFAULT_BRANCH
```

## Repo Setup

Setting up your gitlab repo to work properly with these components will require a few steps:

1. Enable a Protected Branch and set approval rules
2. Create a GitLab Token for the Scorecard Component to run and store in project variables.
