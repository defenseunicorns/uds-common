# UDS Common GitLab CI Components

This folder contains the GitLab CI Components for UDS Common, analogous to the github calable workflows under the `./github/workflows` directory. The included components are as follows:

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
  - component: $CI_SERVER_FQDN/$CI_PROJECT_PATH/publish@$CI_COMMIT_SHA
    inputs:
      flavor: $FLAVOR
      type: $TYPE

# Define a matrix for the test job to follow for the flavors that exist for your package
test:
  parallel:
    matrix:
      - FLAVOR: [upstream, registry1, unicorn] # TODO need secrets to add other flavors
        TYPE: [install] # TODO need upgrade check stuff to enable upgrade type
      - FLAVOR: [upstream, registry1] # TODO need secrets to add other flavors
        TYPE: [upgrade] # TODO need upgrade check stuff to enable upgrade type

# Define matrix for publish job of flavors and architectures
publish:
  parallel:
    matrix:
      - FLAVOR: [upstream, unicorn]
        ARCH: [amd64, arm64]
      - FLAVOR: [registry1]
        ARCH: [amd64]     
```
