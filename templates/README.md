# UDS Common GitLab CI Components

This folder contains the GitLab CI Components for UDS Common, analogous to the github callable workflows under the `./github/workflows` directory. The included components are as follows:

1. Lint
1. Commitlint
1. Test
1. Publish
1. Scorecard

The .gitlab-ci.yml at the root of this repo serves as an example and test of how to call these components. That being said, a general example of how to include these components in your uds-package GitLab repo's pipelines would be as follows:

```yaml
include:
  # include the component located in the current project from the current SHA
  - component: $CI_SERVER_FQDN/$CI_PROJECT_PATH/commitlint@$CI_COMMIT_SHA
  - component: $CI_SERVER_FQDN/$CI_PROJECT_PATH/lint@$CI_COMMIT_SHA
  - component: $CI_SERVER_FQDN/$CI_PROJECT_PATH/test@$CI_COMMIT_SHA
    inputs:
      flavor: $FLAVOR
      type: $TYPE
      runsOn: $RUNNER
  - component: $CI_SERVER_FQDN/$CI_PROJECT_PATH/publish@$CI_COMMIT_SHA
    inputs:
      flavor: $FLAVOR
      type: $TYPE
      runsOn: $RUNNER
# Define a matrix for the test job to follow for the flavors that exist for your package
test:
  parallel:
    matrix:
      - FLAVOR: [upstream, registry1, unicorn] # TODO need secrets to add other flavors
        TYPE: [install] # TODO need upgrade check stuff to enable upgrade type
        RUNNER: [uds] # The tag of the runner to use 
      - FLAVOR: [upstream, registry1] # TODO need secrets to add other flavors
        TYPE: [upgrade] # TODO need upgrade check stuff to enable upgrade type

# Define matrix for publish job of flavors and architectures
publish:
  parallel:
    matrix:
      - FLAVOR: [upstream, unicorn]
        ARCH: [amd64, arm64]
        RUNNER: [uds]
      - FLAVOR: [registry1]
        ARCH: [amd64]
        RUNNER: [uds]
```

## Repo Setup

Setting up your gitlab repo to work properly with these components will require a few steps:

1. Enable Protected Branch and set approval rules
2. Create Gitlab Token for Scorecard Component to run and store in project variables.
