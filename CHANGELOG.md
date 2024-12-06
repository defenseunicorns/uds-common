# Changelog

## [1.5.0](https://github.com/defenseunicorns/uds-common/compare/v1.5.0...v1.5.0) (2024-12-06)


### ⚠ BREAKING CHANGES

* fix the release process ([#355](https://github.com/defenseunicorns/uds-common/issues/355))
* **deps:** update uds common support dependencies ([#354](https://github.com/defenseunicorns/uds-common/issues/354))
* update the license to AGPLv3 or Commercial ([#286](https://github.com/defenseunicorns/uds-common/issues/286))
* remove with.assessment_results from oscal tasks ([#276](https://github.com/defenseunicorns/uds-common/issues/276))
* update the publish task to avoid name collision ([#267](https://github.com/defenseunicorns/uds-common/issues/267))
* **task:** add optional config input to create, deploy package and bundle tasks ([#262](https://github.com/defenseunicorns/uds-common/issues/262))
* add shell linting to uds-common linting ([#258](https://github.com/defenseunicorns/uds-common/issues/258))
* update uds common gh actions to use uds run conditionals ([#254](https://github.com/defenseunicorns/uds-common/issues/254))
* changed latest-package behavior ([#206](https://github.com/defenseunicorns/uds-common/issues/206))
* update doug ci credential for new identity config req
* update publish to take architecture as an input ([#143](https://github.com/defenseunicorns/uds-common/issues/143))
* improve how tests are called ([#71](https://github.com/defenseunicorns/uds-common/issues/71))

### Features

* add action for assisting with badge verification and migrate to nginx ([#191](https://github.com/defenseunicorns/uds-common/issues/191)) ([79a5edf](https://github.com/defenseunicorns/uds-common/commit/79a5edfe7f5d9a4d1611289dbadf643c07850081))
* add an image override to the renovate config ([#160](https://github.com/defenseunicorns/uds-common/issues/160)) ([ea2fcf1](https://github.com/defenseunicorns/uds-common/commit/ea2fcf105bb7bf6a560042191ee8b7f33757c785))
* add options support to setup to set vars and other flags on uds-core ([#235](https://github.com/defenseunicorns/uds-common/issues/235)) ([4336357](https://github.com/defenseunicorns/uds-common/commit/433635708b47c3f420990582a6a813a710d44423))
* add registry-login task ([44e28c4](https://github.com/defenseunicorns/uds-common/commit/44e28c42a0fd4c036bc3c3eb371558162563a33e))
* add support for uds-core snapshots ([#193](https://github.com/defenseunicorns/uds-common/issues/193)) ([7a39915](https://github.com/defenseunicorns/uds-common/commit/7a39915ceff7a1a9e319846042ab74390fda6f2b))
* add task for determining target repo based on flavor ([#188](https://github.com/defenseunicorns/uds-common/issues/188)) ([6810324](https://github.com/defenseunicorns/uds-common/commit/681032402a315c8db80975571242ed8db73e78bf))
* Added a task to free gh runner space ([a31656d](https://github.com/defenseunicorns/uds-common/commit/a31656dfb643bb85e311dd58a2121a50c8657e62))
* adds renovate to sh files ([#110](https://github.com/defenseunicorns/uds-common/issues/110)) ([b604d2e](https://github.com/defenseunicorns/uds-common/commit/b604d2e1b3fc69f29122f9a709c605f5ecf4da18))
* allow alternate paths for the check flavor zarf.yaml ([#326](https://github.com/defenseunicorns/uds-common/issues/326)) ([d3ecafd](https://github.com/defenseunicorns/uds-common/commit/d3ecafdf8a124c8b722b34e41097bf08fe5b8036))
* allow keycloak_group to be specified as input in create-doug-user task ([#332](https://github.com/defenseunicorns/uds-common/issues/332)) ([cf7cbdd](https://github.com/defenseunicorns/uds-common/commit/cf7cbddefc1abf96bab238fa185908eab1da194c))
* changed latest-package behavior ([#206](https://github.com/defenseunicorns/uds-common/issues/206)) ([eb0253c](https://github.com/defenseunicorns/uds-common/commit/eb0253c3174ec6553b00c52022aa0818049a8036))
* **compliance:** add support for extra options on compliance validate ([#170](https://github.com/defenseunicorns/uds-common/issues/170)) ([d191505](https://github.com/defenseunicorns/uds-common/commit/d19150566784e51f7c8d31b7d37b6915cdacc410))
* **compliance:** lula validate and evaluate capability definitions ([#157](https://github.com/defenseunicorns/uds-common/issues/157)) ([b615d90](https://github.com/defenseunicorns/uds-common/commit/b615d90389523763d08b03f793abe5cdeeee55fc))
* converted to an action ([fa881c0](https://github.com/defenseunicorns/uds-common/commit/fa881c00a85011f90f7f30e04c5d7eccbd851fdb))
* initialize repo ([a255341](https://github.com/defenseunicorns/uds-common/commit/a2553416b49c164203a9722bf258ee806decbee0))
* initialize repo ([9eb7e3a](https://github.com/defenseunicorns/uds-common/commit/9eb7e3aa8ea71ae429eaf8a931aba30bd1e309ac))
* login to ghcr from gitlab for upgrade tests and avoiding rate limiting ([#343](https://github.com/defenseunicorns/uds-common/issues/343)) ([e299d1c](https://github.com/defenseunicorns/uds-common/commit/e299d1c9b6c8d1cb9af3f087e62a98ba2793bbd9))
* lula lint integration ([#147](https://github.com/defenseunicorns/uds-common/issues/147)) ([7f357e0](https://github.com/defenseunicorns/uds-common/commit/7f357e0b42859b0178e90047885494ee03542be7))
* provide uds-releaser option for publishing uds packages ([#341](https://github.com/defenseunicorns/uds-common/issues/341)) ([62f8c28](https://github.com/defenseunicorns/uds-common/commit/62f8c28b2db62a0fbcbad5a7a639c65de2359696))
* support gitlab ([#283](https://github.com/defenseunicorns/uds-common/issues/283)) ([9ac2019](https://github.com/defenseunicorns/uds-common/commit/9ac201912622886aa6c6a25c1d0cd086b23b5567))
* **task:** add optional config input to create, deploy package and bundle tasks ([#262](https://github.com/defenseunicorns/uds-common/issues/262)) ([3d3e9cb](https://github.com/defenseunicorns/uds-common/commit/3d3e9cb82e6664a4250782e6ae3a4e1112cfe5be))
* update uds common gh actions to use uds run conditionals ([#254](https://github.com/defenseunicorns/uds-common/issues/254)) ([c9d92f0](https://github.com/defenseunicorns/uds-common/commit/c9d92f0481d147e362d359447b487ab1c1560f31))
* update uds-core to 14.5 ([a7d9b06](https://github.com/defenseunicorns/uds-common/commit/a7d9b06bcbe1e1e24fd40148e89ab62672f9178b))


### Bug Fixes

* add git reset in upgrade-test directory for better local devx ([#337](https://github.com/defenseunicorns/uds-common/issues/337)) ([2c0ca17](https://github.com/defenseunicorns/uds-common/commit/2c0ca174540f4a138648c56058e5a1216d62c617))
* add input for log artifact suffix ([19748e6](https://github.com/defenseunicorns/uds-common/commit/19748e6adf9bfa9ed97f7c4336d008b7a50ae433))
* add runner.arch to upload-artifacts name ([#269](https://github.com/defenseunicorns/uds-common/issues/269)) ([4abe414](https://github.com/defenseunicorns/uds-common/commit/4abe414fa5460bc9e98b53f2e830b41e2e01cf26))
* add test artifact uploads to callable workflows ([#275](https://github.com/defenseunicorns/uds-common/issues/275)) ([02e5c07](https://github.com/defenseunicorns/uds-common/commit/02e5c072465f1b06a05760fd4d1d12e070c22155))
* address issue with registry-login task ([ece666d](https://github.com/defenseunicorns/uds-common/commit/ece666dc703e2cfbd6be1cfb5dc572d5d7ee0ddf))
* allow dependent bundle commands to be run on upgrade tests ([#241](https://github.com/defenseunicorns/uds-common/issues/241)) ([093def2](https://github.com/defenseunicorns/uds-common/commit/093def2f245709084c079aaf529a604d8ca5b6c2))
* broken hyperlink in guide.md ([#272](https://github.com/defenseunicorns/uds-common/issues/272)) ([6b152a4](https://github.com/defenseunicorns/uds-common/commit/6b152a4905ce4b8d212519e3fff4ff99dbaf7e50))
* chainguard creds/renovate match ([#173](https://github.com/defenseunicorns/uds-common/issues/173)) ([49401cc](https://github.com/defenseunicorns/uds-common/commit/49401cc5c8000a661c6e1bc9e10e42fa6f6e2389))
* check tests directories in renovate updates ([#351](https://github.com/defenseunicorns/uds-common/issues/351)) ([61385c2](https://github.com/defenseunicorns/uds-common/commit/61385c2fc0463e125e1914d59c4d7288976c5628))
* don't fail if `zarf.yaml` not found in tag ([#322](https://github.com/defenseunicorns/uds-common/issues/322)) ([e4ef2ab](https://github.com/defenseunicorns/uds-common/commit/e4ef2ab9d752acfd0323eb551d84822311708b25))
* fix accidental deletion ([b427e2e](https://github.com/defenseunicorns/uds-common/commit/b427e2effa85bab87edf697fb4ab5eb35221f3d2))
* fix UDS path ([#67](https://github.com/defenseunicorns/uds-common/issues/67)) ([259136d](https://github.com/defenseunicorns/uds-common/commit/259136d43b961d3f2e7c608d74d45d6f708c75fd))
* gitlab publish being broken due to bash weirdness ([#329](https://github.com/defenseunicorns/uds-common/issues/329)) ([e7a3c69](https://github.com/defenseunicorns/uds-common/commit/e7a3c6969cb77c1560da2ae93f48cb5759a002f2))
* incorporating PR feedback ([db21d69](https://github.com/defenseunicorns/uds-common/commit/db21d6918bf47c9f3f68cf3e1d442481a3aabda9))
* lint:deps producing unwanted file ([#297](https://github.com/defenseunicorns/uds-common/issues/297)) ([94db603](https://github.com/defenseunicorns/uds-common/commit/94db6033619ea5b62d00de52961bd7b5fa969517))
* mandate yamllint at least 1.30.0 to guarantee features in use ([#224](https://github.com/defenseunicorns/uds-common/issues/224)) ([61929ac](https://github.com/defenseunicorns/uds-common/commit/61929ac82c3e4b635a5e1673975ab29964001ce4))
* modified jq command ([#292](https://github.com/defenseunicorns/uds-common/issues/292)) ([d566e86](https://github.com/defenseunicorns/uds-common/commit/d566e86c5a78f2124116113ea3ed35695caec5be))
* moved clean runner action to later in workflow ([5ecb244](https://github.com/defenseunicorns/uds-common/commit/5ecb244c4dc51725d008457da06ab163a9962bd6))
* prevent publish vars from being blown away ([#15](https://github.com/defenseunicorns/uds-common/issues/15)) ([3ec6d5e](https://github.com/defenseunicorns/uds-common/commit/3ec6d5e7656e89d861b95dd37b87c160547f9849))
* pull mv command to use latest version ([#324](https://github.com/defenseunicorns/uds-common/issues/324)) ([3512549](https://github.com/defenseunicorns/uds-common/commit/3512549b418c115f5ff48df5e067c2790bdfd122))
* quote conditional and add use chkpt false ([#357](https://github.com/defenseunicorns/uds-common/issues/357)) ([4cda4d9](https://github.com/defenseunicorns/uds-common/commit/4cda4d94ca965781e57e36000a8b7159197533be))
* refactor top level tasks ([#277](https://github.com/defenseunicorns/uds-common/issues/277)) ([b7f6894](https://github.com/defenseunicorns/uds-common/commit/b7f68947d4082a7cb3128271476f65c61b3a9261))
* refs after rename from uds-common-tasks to uds-common ([2c61a05](https://github.com/defenseunicorns/uds-common/commit/2c61a0507436633cba18a79612ea59d09657f8c0))
* remove with.assessment_results from oscal tasks ([#276](https://github.com/defenseunicorns/uds-common/issues/276)) ([bb8bb4b](https://github.com/defenseunicorns/uds-common/commit/bb8bb4b4df897b8aa747f5fe6e3ddd3fa40017b9))
* removed task artifact ([ec9c5e8](https://github.com/defenseunicorns/uds-common/commit/ec9c5e815a6bdc33924a488b3f573c57d714feac))
* renovate for uds core ([a479694](https://github.com/defenseunicorns/uds-common/commit/a479694aac81ebfac0ff3dbe045ef70a18046587))
* renovate ghcr host docker type ([#201](https://github.com/defenseunicorns/uds-common/issues/201)) ([9c298e0](https://github.com/defenseunicorns/uds-common/commit/9c298e08417ce928dbbf4356c23182f8b1a62ffb))
* renovate incorrectly matching oci helm charts for helm datasources ([#141](https://github.com/defenseunicorns/uds-common/issues/141)) ([2761f2a](https://github.com/defenseunicorns/uds-common/commit/2761f2a5f69bae3967bb8a9ff6d392007f90a21b))
* renovate typo token/password ([#202](https://github.com/defenseunicorns/uds-common/issues/202)) ([5d7ea03](https://github.com/defenseunicorns/uds-common/commit/5d7ea03815929a662c529b2078bdf895d8f3ac1b))
* simplify git command for flavor checks ([#290](https://github.com/defenseunicorns/uds-common/issues/290)) ([72c4e35](https://github.com/defenseunicorns/uds-common/commit/72c4e35d5f9f6ed877c184cf748e67a77e4fa771))
* test/publish workflow upload and default behavior ([#279](https://github.com/defenseunicorns/uds-common/issues/279)) ([1851a1c](https://github.com/defenseunicorns/uds-common/commit/1851a1cb3f532f83a70c09e8bb513fcc6bb64bd1))
* timeout too short on test workflows - allow adjustment on test/publish ([#314](https://github.com/defenseunicorns/uds-common/issues/314)) ([6ac1587](https://github.com/defenseunicorns/uds-common/commit/6ac1587f0553ed91e1f0a2f662e59dd0839d10a7))
* update doug ci credential for new identity config req ([71340f7](https://github.com/defenseunicorns/uds-common/commit/71340f7d4fc0cd8fd6c44335b54e0b12769965d1))
* update publish permissions ([#263](https://github.com/defenseunicorns/uds-common/issues/263)) ([2e57869](https://github.com/defenseunicorns/uds-common/commit/2e57869b41d1f523ca37b2a3da035a580fc7d6d0))
* update renovate config to catch zarf action ([f5dac3d](https://github.com/defenseunicorns/uds-common/commit/f5dac3d1feea70a56c56584c8d3aa0bda890026a))
* update renovate config to use docker versioning for zarf images ([#128](https://github.com/defenseunicorns/uds-common/issues/128)) ([c18e125](https://github.com/defenseunicorns/uds-common/commit/c18e12507384328bb53b81c096bc9827f96ba114))
* update renovate creds ([#200](https://github.com/defenseunicorns/uds-common/issues/200)) ([1c6eb24](https://github.com/defenseunicorns/uds-common/commit/1c6eb24f37b4059589a70c9addeffb80895d450b))
* update the publish task to avoid name collision ([#267](https://github.com/defenseunicorns/uds-common/issues/267)) ([6a176ff](https://github.com/defenseunicorns/uds-common/commit/6a176ffd18ece28b759eb4e20f2e082ff0e079fb))
* update UDS Opeator link in guide.md ([#336](https://github.com/defenseunicorns/uds-common/issues/336)) ([66cbe6f](https://github.com/defenseunicorns/uds-common/commit/66cbe6f63597d1eeeb9c177084067bc90aa0d469))
* upgrade test not cloning in private repos ([#295](https://github.com/defenseunicorns/uds-common/issues/295)) ([1dde808](https://github.com/defenseunicorns/uds-common/commit/1dde808b943c554edcd401fb814d504ee74117c0))
* upgrade version tests ([#215](https://github.com/defenseunicorns/uds-common/issues/215)) ([d48167a](https://github.com/defenseunicorns/uds-common/commit/d48167a5f999dc5ffd91e6b5878ab158e55f1a6c))
* use flavor from inputs instead of $FLAVOR variable ([#335](https://github.com/defenseunicorns/uds-common/issues/335)) ([398bbe5](https://github.com/defenseunicorns/uds-common/commit/398bbe58d5eac6f365b705a8fad80a7eb920202b))
* use workflow env for pr.title ([cd2955a](https://github.com/defenseunicorns/uds-common/commit/cd2955af0ee88339e921dcdb9d0c8edea4d48b99))
* vars on create ([93928e4](https://github.com/defenseunicorns/uds-common/commit/93928e40ae05fcf45c1919c46c7805a92209a66e))
* version template for zarf action ([9ae973d](https://github.com/defenseunicorns/uds-common/commit/9ae973d75ed741643aa917a7cb4303ac83b35966))


### Miscellaneous

* add a common bundle remove task ([#153](https://github.com/defenseunicorns/uds-common/issues/153)) ([f3b287c](https://github.com/defenseunicorns/uds-common/commit/f3b287c909c626e9f11d47b9e13d79312d3f3a99))
* add a default to setup to create an admin keycloak user ([#111](https://github.com/defenseunicorns/uds-common/issues/111)) ([7fe0dd4](https://github.com/defenseunicorns/uds-common/commit/7fe0dd49a9b7032f9c06a83c5a1c6adbb17e8d63))
* add a default uds task to deploy podinfo ([#108](https://github.com/defenseunicorns/uds-common/issues/108)) ([c60e1ba](https://github.com/defenseunicorns/uds-common/commit/c60e1ba4888635ace4839e158b4dc476c11a8e7c))
* add a full uds task and inputs ([#95](https://github.com/defenseunicorns/uds-common/issues/95)) ([7e15fd2](https://github.com/defenseunicorns/uds-common/commit/7e15fd2ba4629ee1fae31e87f946ca32138df73c))
* add a playwright setup action ([#155](https://github.com/defenseunicorns/uds-common/issues/155)) ([93720d9](https://github.com/defenseunicorns/uds-common/commit/93720d91189fc54c5f5302bb6af769621bc21b27))
* add a publish job for dev bundles ([#73](https://github.com/defenseunicorns/uds-common/issues/73)) ([37b0d08](https://github.com/defenseunicorns/uds-common/commit/37b0d08f2c67b13ae58741a52dabaabab90396ce))
* add a pull task to get the latest package release ([#70](https://github.com/defenseunicorns/uds-common/issues/70)) ([e534793](https://github.com/defenseunicorns/uds-common/commit/e5347932c20cffe103bf015c2762b345a2ea30bb))
* add a regex to capture npm install commands ([352f04c](https://github.com/defenseunicorns/uds-common/commit/352f04c049aaac9677ede013dbd06a7f21196968))
* add a UDS package CR to make the package better for testing ([#102](https://github.com/defenseunicorns/uds-common/issues/102)) ([cf74934](https://github.com/defenseunicorns/uds-common/commit/cf749343a72db09f46cc054ff463454cdb8c4b74))
* add additional install step to playwright install ([#183](https://github.com/defenseunicorns/uds-common/issues/183)) ([41855e4](https://github.com/defenseunicorns/uds-common/commit/41855e42bd73c67109ed42935f1e67ab7305ddda))
* add an ADR to document workflow/job names ([#260](https://github.com/defenseunicorns/uds-common/issues/260)) ([0685c7c](https://github.com/defenseunicorns/uds-common/commit/0685c7cac904ebe5f746770f9488210498d4463d))
* add an airgap note to UDS Package Practices (clarity is kindness) ([#126](https://github.com/defenseunicorns/uds-common/issues/126)) ([b70e1fe](https://github.com/defenseunicorns/uds-common/commit/b70e1fe165a521a33789298a7e69aa6a59d54968))
* add an explicit architecture input ([#75](https://github.com/defenseunicorns/uds-common/issues/75)) ([15825d4](https://github.com/defenseunicorns/uds-common/commit/15825d44bbb53b90a22ff41eced5050d84ffa251))
* add cgr identity assume to setup action ([#180](https://github.com/defenseunicorns/uds-common/issues/180)) ([2ec74fb](https://github.com/defenseunicorns/uds-common/commit/2ec74fbe496c5cdcc88cd3f424951f11271fe5d6))
* add cgr.dev renovate rule ([#171](https://github.com/defenseunicorns/uds-common/issues/171)) ([68497f9](https://github.com/defenseunicorns/uds-common/commit/68497f95ffdccf5802da81f2f0c9a8f7f8fe912c))
* add common workflows for reuse across repos ([4b5c84b](https://github.com/defenseunicorns/uds-common/commit/4b5c84bbf84309250e3023c53c8cf77e25eef767))
* add dockerfile `ADD` support ([#162](https://github.com/defenseunicorns/uds-common/issues/162)) ([6854284](https://github.com/defenseunicorns/uds-common/commit/685428477abea23a2a20c311a135acc517558fc3))
* add ie ([0bc781e](https://github.com/defenseunicorns/uds-common/commit/0bc781e7a9a972bb1853aeb657919ca86062c83f))
* add if to only run the clean runner task on ubuntu-latest ([#309](https://github.com/defenseunicorns/uds-common/issues/309)) ([10377e8](https://github.com/defenseunicorns/uds-common/commit/10377e875c105c69b2233cf8f0703c1951b2ebf1))
* add latest-bundle-release task ([#97](https://github.com/defenseunicorns/uds-common/issues/97)) ([2662f6a](https://github.com/defenseunicorns/uds-common/commit/2662f6a697a97b2a202a128040a487f2d2e117d7))
* add renovate support for org ghcr packages ([#199](https://github.com/defenseunicorns/uds-common/issues/199)) ([2c5de9c](https://github.com/defenseunicorns/uds-common/commit/2c5de9cc41cad9d1e02faf39c0cad364933f335f))
* add shell linting to uds-common linting ([#258](https://github.com/defenseunicorns/uds-common/issues/258)) ([82e9137](https://github.com/defenseunicorns/uds-common/commit/82e9137642cb5dc0ba41cb33ad1ae44258549d19))
* add the ability to spoof to common ([#77](https://github.com/defenseunicorns/uds-common/issues/77)) ([49634e1](https://github.com/defenseunicorns/uds-common/commit/49634e1b69c6b2eadcc2497f6baba8bd349f3d38))
* add the second raw URL and releases URL for GitHub to renovate config ([#154](https://github.com/defenseunicorns/uds-common/issues/154)) ([bdda4dc](https://github.com/defenseunicorns/uds-common/commit/bdda4dcbd201e279b83361d72ea448114af26522))
* add uds-marketplace to codeowners ([#225](https://github.com/defenseunicorns/uds-common/issues/225)) ([ff9a8d9](https://github.com/defenseunicorns/uds-common/commit/ff9a8d943f4e7e926d243dabecfe0c585e946ba0))
* add upgrade tests to common ([#91](https://github.com/defenseunicorns/uds-common/issues/91)) ([bb2e590](https://github.com/defenseunicorns/uds-common/commit/bb2e59021355172db2cfcca7dbf5a2434ce41b6d))
* adds check for addlicense ([#303](https://github.com/defenseunicorns/uds-common/issues/303)) ([4fef014](https://github.com/defenseunicorns/uds-common/commit/4fef014b93368ac2b2cff8b01a6ab997db12a660))
* adjust UDS package practice formatting ([#123](https://github.com/defenseunicorns/uds-common/issues/123)) ([f351d04](https://github.com/defenseunicorns/uds-common/commit/f351d04732a6e6e6fc2c62eff13f625a613effcc))
* allow debug logs to continue through failure ([#146](https://github.com/defenseunicorns/uds-common/issues/146)) ([bec4fc3](https://github.com/defenseunicorns/uds-common/commit/bec4fc330d720673f645bda7e56006218ec96aad))
* attempt to fix renovate ([#98](https://github.com/defenseunicorns/uds-common/issues/98)) ([8155ecc](https://github.com/defenseunicorns/uds-common/commit/8155ecc62968e342110b0598a2d57de17b5e3914))
* **badging:** include unicorn flavor suggstion for bronze ([#288](https://github.com/defenseunicorns/uds-common/issues/288)) ([f668b06](https://github.com/defenseunicorns/uds-common/commit/f668b06f1597efd3c701a47ce28de1d8f298b1b8))
* clean repo ([4c5aa44](https://github.com/defenseunicorns/uds-common/commit/4c5aa44969a33764d17c9e0fe50eac902966ca43))
* correct the release workflow path on README ([#265](https://github.com/defenseunicorns/uds-common/issues/265)) ([62c9a5f](https://github.com/defenseunicorns/uds-common/commit/62c9a5f0a14a8215d5d7e55e1b11d0d77003c8e1))
* create common renovate config ([77f1320](https://github.com/defenseunicorns/uds-common/commit/77f1320f827091c67c4b5eedb5a08e8ad9e2bacd))
* **deps:** update dependency defenseunicorns/uds-cli to v0.10.1 ([#84](https://github.com/defenseunicorns/uds-common/issues/84)) ([6b455b7](https://github.com/defenseunicorns/uds-common/commit/6b455b7cef8ddab022c758a6309d8993f0a564b7))
* **deps:** update dependency defenseunicorns/uds-cli to v0.7.0 ([9a8beb2](https://github.com/defenseunicorns/uds-common/commit/9a8beb277939ccf3fa1a01f4aedf7d9ce0c415d2))
* **deps:** update dependency defenseunicorns/uds-cli to v0.8.1 ([e82fbee](https://github.com/defenseunicorns/uds-common/commit/e82fbee39bf137abd5015831c062e45eb4ba48ac))
* **deps:** update dependency defenseunicorns/uds-cli to v0.9.0 ([77eb22e](https://github.com/defenseunicorns/uds-common/commit/77eb22eabf2b31c529a759662e9fe93399fa4361))
* **deps:** update dependency defenseunicorns/uds-cli to v0.9.2 ([ce3ba97](https://github.com/defenseunicorns/uds-common/commit/ce3ba974ef3ff88058809f4b9a78da281a65ffa0))
* **deps:** update dependency defenseunicorns/uds-cli to v0.9.3 ([e9757e8](https://github.com/defenseunicorns/uds-common/commit/e9757e87ac98f9a76983c2ff7e92aa57f0ca14cc))
* **deps:** update dependency defenseunicorns/uds-core to v0.10.0 ([1b45688](https://github.com/defenseunicorns/uds-common/commit/1b45688eeb3f0e1797550ce615d361aa282fa7f8))
* **deps:** update dependency defenseunicorns/uds-core to v0.10.0 ([f70d939](https://github.com/defenseunicorns/uds-common/commit/f70d939c2f749616b67212dc84cf8355c01df6fa))
* **deps:** update dependency defenseunicorns/uds-core to v0.12.0 ([f003bd7](https://github.com/defenseunicorns/uds-common/commit/f003bd7150b44af5459513c57332cd1cba06f209))
* **deps:** update dependency defenseunicorns/uds-core to v0.14.3 ([e3461fb](https://github.com/defenseunicorns/uds-common/commit/e3461fb8da51f98e86774fe9a3d742a8dc1d97cf))
* **deps:** update dependency defenseunicorns/uds-core to v0.15.1 ([#66](https://github.com/defenseunicorns/uds-common/issues/66)) ([3ab4e04](https://github.com/defenseunicorns/uds-common/commit/3ab4e04ad219db0beae73c5b0f35fda147217382))
* **deps:** update dependency defenseunicorns/uds-core to v0.16.1 ([#72](https://github.com/defenseunicorns/uds-common/issues/72)) ([32d1ad6](https://github.com/defenseunicorns/uds-common/commit/32d1ad6812a3ef6ad750447296f5644b14ff2855))
* **deps:** update dependency defenseunicorns/uds-core to v0.17.0 ([#83](https://github.com/defenseunicorns/uds-common/issues/83)) ([b8d8181](https://github.com/defenseunicorns/uds-common/commit/b8d818165c7c676f56898c2d15ae14a2f7ff5f0c))
* **deps:** update dependency defenseunicorns/zarf to v0.32.2 ([22295b9](https://github.com/defenseunicorns/uds-common/commit/22295b950e3f07c5aa3f350695ac6bf84a36da86))
* **deps:** update githubactions ([9f357db](https://github.com/defenseunicorns/uds-common/commit/9f357db418ae5c14fd9a58db1bf379aa60503b26))
* **deps:** update githubactions ([afd1d92](https://github.com/defenseunicorns/uds-common/commit/afd1d927bc43f3f523017f0c9abc4377aea287a9))
* **deps:** update githubactions to v4.3.1 ([57a6919](https://github.com/defenseunicorns/uds-common/commit/57a6919c207baed4b2e2d73f415cdee84bd88f45))
* **deps:** update support-deps to v0.11.0 ([#137](https://github.com/defenseunicorns/uds-common/issues/137)) ([985dfd7](https://github.com/defenseunicorns/uds-common/commit/985dfd7f9d745d07daa528e7dfdc982c61b2da4b))
* **deps:** update support-deps to v3.27.0 ([#318](https://github.com/defenseunicorns/uds-common/issues/318)) ([8b6e67e](https://github.com/defenseunicorns/uds-common/commit/8b6e67e8f0ffa1300a75bc3d8d1df916dbddb2f8))
* **deps:** update support-deps to v4.4.3 ([#282](https://github.com/defenseunicorns/uds-common/issues/282)) ([13d35ef](https://github.com/defenseunicorns/uds-common/commit/13d35ef9831c71cc217ef43f2c13562f40a3ec5b))
* **deps:** update uds common nginx package ([#223](https://github.com/defenseunicorns/uds-common/issues/223)) ([688197c](https://github.com/defenseunicorns/uds-common/commit/688197cfcfdf2e14c222f82c59d27904fd1753bb))
* **deps:** update uds common package dependencies to v1.27.2 ([#229](https://github.com/defenseunicorns/uds-common/issues/229)) ([5b6a722](https://github.com/defenseunicorns/uds-common/commit/5b6a7223469bddf79be079baab1e3333a01c71e5))
* **deps:** update uds common package dependencies to v1.27.3 ([#349](https://github.com/defenseunicorns/uds-common/issues/349)) ([4fbe49f](https://github.com/defenseunicorns/uds-common/commit/4fbe49f520cfa2c8ca38a39b829a7b2c782bae47))
* **deps:** update uds common package dependencies to v6.6.1 ([#92](https://github.com/defenseunicorns/uds-common/issues/92)) ([862b635](https://github.com/defenseunicorns/uds-common/commit/862b63512b4b53ff963b85e25e8011818bb8e4e3))
* **deps:** update uds common package dependencies to v6.6.2 ([#107](https://github.com/defenseunicorns/uds-common/issues/107)) ([b6a18b0](https://github.com/defenseunicorns/uds-common/commit/b6a18b039711998bb6d3c90db25a4f42f49c5eb3))
* **deps:** update uds common package dependencies to v6.6.3 ([#132](https://github.com/defenseunicorns/uds-common/issues/132)) ([0ebdd1f](https://github.com/defenseunicorns/uds-common/commit/0ebdd1f5f2aa32720c88347027215305573bc716))
* **deps:** update uds common package dependencies to v6.7.0 ([#158](https://github.com/defenseunicorns/uds-common/issues/158)) ([ef9c567](https://github.com/defenseunicorns/uds-common/commit/ef9c567a5aea13ba2dbf22b2790b78cacb113ab1))
* **deps:** update uds common support dependencies ([#101](https://github.com/defenseunicorns/uds-common/issues/101)) ([dfdf927](https://github.com/defenseunicorns/uds-common/commit/dfdf927b2367a0592a54fa8a97d4ee84e118e2e0))
* **deps:** update uds common support dependencies ([#106](https://github.com/defenseunicorns/uds-common/issues/106)) ([ab06724](https://github.com/defenseunicorns/uds-common/commit/ab067245249e63065d2c266fe3b1a45b155e9de2))
* **deps:** update uds common support dependencies ([#116](https://github.com/defenseunicorns/uds-common/issues/116)) ([8aed1e0](https://github.com/defenseunicorns/uds-common/commit/8aed1e0ae8b4d65f7418664e8f2c73a16bf42801))
* **deps:** update uds common support dependencies ([#125](https://github.com/defenseunicorns/uds-common/issues/125)) ([e014724](https://github.com/defenseunicorns/uds-common/commit/e01472454d2b3ef9665546fbb24c9980f090d238))
* **deps:** update uds common support dependencies ([#148](https://github.com/defenseunicorns/uds-common/issues/148)) ([b5854de](https://github.com/defenseunicorns/uds-common/commit/b5854de37ccb9e46751c17cecd8101411f9fac32))
* **deps:** update uds common support dependencies ([#164](https://github.com/defenseunicorns/uds-common/issues/164)) ([6c50f47](https://github.com/defenseunicorns/uds-common/commit/6c50f47ecd9c75483ab70953d5c31682362377c2))
* **deps:** update uds common support dependencies ([#169](https://github.com/defenseunicorns/uds-common/issues/169)) ([b6a4232](https://github.com/defenseunicorns/uds-common/commit/b6a4232cb030f3ea7e66041306b5cfcd9a488a98))
* **deps:** update uds common support dependencies ([#179](https://github.com/defenseunicorns/uds-common/issues/179)) ([e1a0d5a](https://github.com/defenseunicorns/uds-common/commit/e1a0d5acba2c0cc083af6ac2823d9cf068008453))
* **deps:** update uds common support dependencies ([#187](https://github.com/defenseunicorns/uds-common/issues/187)) ([a0bbfb0](https://github.com/defenseunicorns/uds-common/commit/a0bbfb043e670a175fbdc44585e2bbb5b695acf7))
* **deps:** update uds common support dependencies ([#195](https://github.com/defenseunicorns/uds-common/issues/195)) ([04b6409](https://github.com/defenseunicorns/uds-common/commit/04b64091ba0528463713f66d8167572a533e0c3d))
* **deps:** update uds common support dependencies ([#210](https://github.com/defenseunicorns/uds-common/issues/210)) ([822dac4](https://github.com/defenseunicorns/uds-common/commit/822dac4452e6815aadcf09f487406ff258756a0c))
* **deps:** update uds common support dependencies ([#213](https://github.com/defenseunicorns/uds-common/issues/213)) ([7eb8a12](https://github.com/defenseunicorns/uds-common/commit/7eb8a123684bca1c3a7490f5d35ae7ae4598db60))
* **deps:** update uds common support dependencies ([#216](https://github.com/defenseunicorns/uds-common/issues/216)) ([a597644](https://github.com/defenseunicorns/uds-common/commit/a597644480afb2e8c1685ca067a7e838c6f14570))
* **deps:** update uds common support dependencies ([#221](https://github.com/defenseunicorns/uds-common/issues/221)) ([bd6459f](https://github.com/defenseunicorns/uds-common/commit/bd6459f057c236a6ca28e8fc6ec9af2821be9c00))
* **deps:** update uds common support dependencies ([#228](https://github.com/defenseunicorns/uds-common/issues/228)) ([b34e017](https://github.com/defenseunicorns/uds-common/commit/b34e01747bc81b098b63cdf2a820dd644a7c6725))
* **deps:** update uds common support dependencies ([#236](https://github.com/defenseunicorns/uds-common/issues/236)) ([ba37ec2](https://github.com/defenseunicorns/uds-common/commit/ba37ec2db2d56afd2b7e63c00bd19eebd1dd8ddc))
* **deps:** update uds common support dependencies ([#237](https://github.com/defenseunicorns/uds-common/issues/237)) ([eac2f68](https://github.com/defenseunicorns/uds-common/commit/eac2f686deacb898a6383fcc73c861293db52b9c))
* **deps:** update uds common support dependencies ([#250](https://github.com/defenseunicorns/uds-common/issues/250)) ([c828932](https://github.com/defenseunicorns/uds-common/commit/c82893264fffadfd0d84ca239a9459e6e55b9635))
* **deps:** update uds common support dependencies ([#278](https://github.com/defenseunicorns/uds-common/issues/278)) ([e71432f](https://github.com/defenseunicorns/uds-common/commit/e71432f261fa03b60c7bf5845e749476390e104b))
* **deps:** update uds common support dependencies ([#305](https://github.com/defenseunicorns/uds-common/issues/305)) ([429058f](https://github.com/defenseunicorns/uds-common/commit/429058f7a8a3e670ef59c0d385a4b58f90a31387))
* **deps:** update uds common support dependencies ([#320](https://github.com/defenseunicorns/uds-common/issues/320)) ([7dded2a](https://github.com/defenseunicorns/uds-common/commit/7dded2aa68a1f1c9b51960d870f698c976d0c1a4))
* **deps:** update uds common support dependencies ([#334](https://github.com/defenseunicorns/uds-common/issues/334)) ([d95aafa](https://github.com/defenseunicorns/uds-common/commit/d95aafabbc53c6f3c6034c71bdee28f4841733eb))
* **deps:** update uds common support dependencies ([#344](https://github.com/defenseunicorns/uds-common/issues/344)) ([9365b36](https://github.com/defenseunicorns/uds-common/commit/9365b36350a93b263a7248c41229684241959691))
* **deps:** update uds common support dependencies ([#348](https://github.com/defenseunicorns/uds-common/issues/348)) ([4430e46](https://github.com/defenseunicorns/uds-common/commit/4430e46bcd30092cb25e24bc278b54602602c3fb))
* **deps:** update uds common support dependencies ([#354](https://github.com/defenseunicorns/uds-common/issues/354)) ([511d894](https://github.com/defenseunicorns/uds-common/commit/511d8940991eaba185dd52d11a3d37efa7defcd8))
* **deps:** update uds common support dependencies to v0.22.0 ([#133](https://github.com/defenseunicorns/uds-common/issues/133)) ([2cf903d](https://github.com/defenseunicorns/uds-common/commit/2cf903d41d0dbfda1baaa9629d1fa3c5d1a88110))
* **deps:** update uds common support dependencies to v0.22.1 ([#144](https://github.com/defenseunicorns/uds-common/issues/144)) ([d618bd2](https://github.com/defenseunicorns/uds-common/commit/d618bd2be3f75d62346594cb8d6d8c339b074f93))
* **deps:** update uds common support dependencies to v0.29.1 ([#313](https://github.com/defenseunicorns/uds-common/issues/313)) ([bd27cc8](https://github.com/defenseunicorns/uds-common/commit/bd27cc8f5b08940626276ca338c9bf864bc5f054))
* **deps:** update uds common support dependencies to v0.30.0 ([#328](https://github.com/defenseunicorns/uds-common/issues/328)) ([2c8bb0d](https://github.com/defenseunicorns/uds-common/commit/2c8bb0dfdd86611b32601fc9c4083fba6ea735aa))
* **deps:** update uds common support dependencies to v0.32.0 ([#347](https://github.com/defenseunicorns/uds-common/issues/347)) ([14f4841](https://github.com/defenseunicorns/uds-common/commit/14f48411704c4df466f3f5c47f6cb90e84a592fb))
* disable stale PR rebasing for renovate ([#284](https://github.com/defenseunicorns/uds-common/issues/284)) ([27ca69e](https://github.com/defenseunicorns/uds-common/commit/27ca69e53d980672b655b03ee854d2e7ea0462dc))
* **docs:** fix overwritten requirement for metadata ([#296](https://github.com/defenseunicorns/uds-common/issues/296)) ([07fd1d3](https://github.com/defenseunicorns/uds-common/commit/07fd1d330374a79f0ff3278d972155ef80d83313))
* **docs:** restructure and introduce metadata guidelines ([#266](https://github.com/defenseunicorns/uds-common/issues/266)) ([6828f10](https://github.com/defenseunicorns/uds-common/commit/6828f10932a65d5fbbaf5994e2c23ddd1cd27255))
* **docs:** update CODEOWNERS example ([#302](https://github.com/defenseunicorns/uds-common/issues/302)) ([cf9959f](https://github.com/defenseunicorns/uds-common/commit/cf9959f7121f35b56748d62df5400d4ed3ac273d))
* fix broken links and change name of package integration guide ([#346](https://github.com/defenseunicorns/uds-common/issues/346)) ([c470dea](https://github.com/defenseunicorns/uds-common/commit/c470dea2c0dc108164ceab9acb7b567af703a48e))
* fix codeowners ([#196](https://github.com/defenseunicorns/uds-common/issues/196)) ([856ef22](https://github.com/defenseunicorns/uds-common/commit/856ef221b39e65070e966942b42e79d408f59b76))
* fix commitlint workflow permissions ([#166](https://github.com/defenseunicorns/uds-common/issues/166)) ([d701196](https://github.com/defenseunicorns/uds-common/commit/d701196ed2b7b1507f6b7ad946e4a3e030fa3ca5))
* fix missing keys in setup actions ([#93](https://github.com/defenseunicorns/uds-common/issues/93)) ([39d7395](https://github.com/defenseunicorns/uds-common/commit/39d73955ebb35f4e844a45fe23a7acf7d65d239a))
* fix renovate env var rule overmatching ([#99](https://github.com/defenseunicorns/uds-common/issues/99)) ([480497f](https://github.com/defenseunicorns/uds-common/commit/480497f4a72c3f25fcb87823c5902192d4e5befb))
* fix spoof to not include a dash ([#79](https://github.com/defenseunicorns/uds-common/issues/79)) ([5d1738b](https://github.com/defenseunicorns/uds-common/commit/5d1738ba0ca2cd19c7fdf6dfe6873339e129c3bb))
* fix the extract version template for env vars ([#115](https://github.com/defenseunicorns/uds-common/issues/115)) ([72d5d26](https://github.com/defenseunicorns/uds-common/commit/72d5d263ce850eac20728eb9330c7b3e26143a2b))
* fix the release process ([#355](https://github.com/defenseunicorns/uds-common/issues/355)) ([517932c](https://github.com/defenseunicorns/uds-common/commit/517932c890e0be62a87ef3f44ce88f9f3f587d5b))
* fix the renovate config github digest pinning ([#100](https://github.com/defenseunicorns/uds-common/issues/100)) ([4603448](https://github.com/defenseunicorns/uds-common/commit/4603448ce94c22c614ec7e87b9520e9681e618e2))
* fix the Zarf package renovate regex to the correct versionTemplate ([#181](https://github.com/defenseunicorns/uds-common/issues/181)) ([272b502](https://github.com/defenseunicorns/uds-common/commit/272b502fa2f36b3703f9cdcbdbfb579ce437a0d7))
* fix version matching for UDS packages ([#176](https://github.com/defenseunicorns/uds-common/issues/176)) ([e068b6a](https://github.com/defenseunicorns/uds-common/commit/e068b6a255cc856e313485826a2140a3977c6b03))
* give doug a mattermostid attribute and update uds version ([#120](https://github.com/defenseunicorns/uds-common/issues/120)) ([4a85172](https://github.com/defenseunicorns/uds-common/commit/4a851720a8ac7e62826efda9e92200ba3a5b6709))
* have addlicense ignore gitignored files ([#294](https://github.com/defenseunicorns/uds-common/issues/294)) ([1bf662e](https://github.com/defenseunicorns/uds-common/commit/1bf662e890a238bf49234e9768d5fa7078d4fdb3))
* hotfix the renovate config to properly pickup git chart versions and registry 1 images ([3f7d5ec](https://github.com/defenseunicorns/uds-common/commit/3f7d5ec09597764fadb794b604f509f34079d511))
* hotfix the spoof containing a dash in the input and add a publish step ([#81](https://github.com/defenseunicorns/uds-common/issues/81)) ([f9c7aac](https://github.com/defenseunicorns/uds-common/commit/f9c7aac4a30e5c3e627c44946f2f212af1573b39))
* improve badge verification and dep installs ([#316](https://github.com/defenseunicorns/uds-common/issues/316)) ([047cc5b](https://github.com/defenseunicorns/uds-common/commit/047cc5b52dacfbc77a60b2ea13d507237451c529))
* improve how tests are called ([#71](https://github.com/defenseunicorns/uds-common/issues/71)) ([043b297](https://github.com/defenseunicorns/uds-common/commit/043b297012f926e571a657d7a2abbe8c7413144d))
* improve task checks/linting and allow more options on test/publish ([#311](https://github.com/defenseunicorns/uds-common/issues/311)) ([894a2ce](https://github.com/defenseunicorns/uds-common/commit/894a2ce4d9c26015cc4842644c20eb92a9acd2a3))
* initial package practices ([#117](https://github.com/defenseunicorns/uds-common/issues/117)) ([d292b21](https://github.com/defenseunicorns/uds-common/commit/d292b216da73493743cd0a67b9763549c87c1819))
* introduce a fix for release-please not firing on PR workflows ([f8562cd](https://github.com/defenseunicorns/uds-common/commit/f8562cdd89c260bd56f650badeb7c12b8b0dadcb))
* **main:** release 0.1.0 ([807ecc7](https://github.com/defenseunicorns/uds-common/commit/807ecc7e1545fd4f4b0488209381b67bb79e9cd4))
* **main:** release 0.1.1 ([fb19ce6](https://github.com/defenseunicorns/uds-common/commit/fb19ce68d03f2561f4d1506c25a5f650d93f05e9))
* **main:** release 0.1.2 ([2693c46](https://github.com/defenseunicorns/uds-common/commit/2693c462d4ec9ee7e5cb55a86a2216146ffe0e38))
* **main:** release 0.1.3 ([756ccab](https://github.com/defenseunicorns/uds-common/commit/756ccab9e73345f8157b627c2c0a41759887295b))
* **main:** release 0.1.4 ([588d305](https://github.com/defenseunicorns/uds-common/commit/588d305c20e1419932858e4cd62e9541b3d705a6))
* **main:** release 0.10.0 ([#190](https://github.com/defenseunicorns/uds-common/issues/190)) ([e7c0643](https://github.com/defenseunicorns/uds-common/commit/e7c0643d3f9d74ce49c7386b48964d2be646d726))
* **main:** release 0.11.0 ([#194](https://github.com/defenseunicorns/uds-common/issues/194)) ([afd3aea](https://github.com/defenseunicorns/uds-common/commit/afd3aea72462ac21a715cb5dbc2654b42073ac40))
* **main:** release 0.11.1 ([#198](https://github.com/defenseunicorns/uds-common/issues/198)) ([2536a06](https://github.com/defenseunicorns/uds-common/commit/2536a06363d50a160421105b2df86aacf69388c1))
* **main:** release 0.11.2 ([#208](https://github.com/defenseunicorns/uds-common/issues/208)) ([76287d4](https://github.com/defenseunicorns/uds-common/commit/76287d41ec5f06ecbdd0a6453877a78675aceffe))
* **main:** release 0.12.0 ([#212](https://github.com/defenseunicorns/uds-common/issues/212)) ([24c8a2a](https://github.com/defenseunicorns/uds-common/commit/24c8a2a48eeb33773b76b3587c489cb17496c9e0))
* **main:** release 0.13.0 ([#218](https://github.com/defenseunicorns/uds-common/issues/218)) ([ea9db8a](https://github.com/defenseunicorns/uds-common/commit/ea9db8ab9bfc4a5d87acd7d1af385aa8e44206d3))
* **main:** release 0.13.1 ([#239](https://github.com/defenseunicorns/uds-common/issues/239)) ([e300847](https://github.com/defenseunicorns/uds-common/commit/e3008473beab00b12a94f9fcc7340124338d5c08))
* **main:** release 0.2.0 ([ad071de](https://github.com/defenseunicorns/uds-common/commit/ad071de8042d4f880d72b4bfe42599192f15f966))
* **main:** release 0.2.1 ([417b9c2](https://github.com/defenseunicorns/uds-common/commit/417b9c2bc088f664c616c9929a2b3ce448d251f7))
* **main:** release 0.2.2 ([7bb71bc](https://github.com/defenseunicorns/uds-common/commit/7bb71bc11acf3c5abd430545eac21fe0244a41fe))
* **main:** release 0.3.0 ([5255f7f](https://github.com/defenseunicorns/uds-common/commit/5255f7fd5bc266d4611af852b1eaa54afee3ac32))
* **main:** release 0.3.1 ([#69](https://github.com/defenseunicorns/uds-common/issues/69)) ([275e839](https://github.com/defenseunicorns/uds-common/commit/275e839e80667938baf1c1dda0f543261ba57618))
* **main:** release 0.3.10 ([#96](https://github.com/defenseunicorns/uds-common/issues/96)) ([5e4414d](https://github.com/defenseunicorns/uds-common/commit/5e4414dc25302739063bb58aa96b8afef5be9851))
* **main:** release 0.3.11 ([#104](https://github.com/defenseunicorns/uds-common/issues/104)) ([0a1622c](https://github.com/defenseunicorns/uds-common/commit/0a1622c9ff2298722b9e47563236ac56d1a93a56))
* **main:** release 0.3.2 ([#74](https://github.com/defenseunicorns/uds-common/issues/74)) ([0db2190](https://github.com/defenseunicorns/uds-common/commit/0db21901e025686908dde3ba09f615905116380e))
* **main:** release 0.3.3 ([#76](https://github.com/defenseunicorns/uds-common/issues/76)) ([e2ad99f](https://github.com/defenseunicorns/uds-common/commit/e2ad99f7caba1b0d08856918db9385a431cfdbca))
* **main:** release 0.3.4 ([#78](https://github.com/defenseunicorns/uds-common/issues/78)) ([5751bc8](https://github.com/defenseunicorns/uds-common/commit/5751bc89b16b5d70f6b9145b5e030296c501c7ff))
* **main:** release 0.3.5 ([#80](https://github.com/defenseunicorns/uds-common/issues/80)) ([213fc17](https://github.com/defenseunicorns/uds-common/commit/213fc1778187871c46e067db9d74b5d51ceb0976))
* **main:** release 0.3.6 ([#82](https://github.com/defenseunicorns/uds-common/issues/82)) ([05f42bb](https://github.com/defenseunicorns/uds-common/commit/05f42bb3117b66ebef8c72ae050b34bce19385f5))
* **main:** release 0.3.7 ([#87](https://github.com/defenseunicorns/uds-common/issues/87)) ([9c47868](https://github.com/defenseunicorns/uds-common/commit/9c4786868c2d6950fa0fd2249b08632526da5664))
* **main:** release 0.3.8 ([#89](https://github.com/defenseunicorns/uds-common/issues/89)) ([46015a5](https://github.com/defenseunicorns/uds-common/commit/46015a51d90c527129e720c3f26295bb0fbda51c))
* **main:** release 0.3.9 ([#94](https://github.com/defenseunicorns/uds-common/issues/94)) ([264ec43](https://github.com/defenseunicorns/uds-common/commit/264ec430c4079129870820e70c4439f3f3d57cbc))
* **main:** release 0.4.0 ([#113](https://github.com/defenseunicorns/uds-common/issues/113)) ([a6fba9c](https://github.com/defenseunicorns/uds-common/commit/a6fba9c0084319325d70816a3481aec0979649fa))
* **main:** release 0.4.1 ([#119](https://github.com/defenseunicorns/uds-common/issues/119)) ([5196df7](https://github.com/defenseunicorns/uds-common/commit/5196df76a219e4881d40326c7484f7d2e9ff1f20))
* **main:** release 0.4.2 ([#121](https://github.com/defenseunicorns/uds-common/issues/121)) ([b2e8b25](https://github.com/defenseunicorns/uds-common/commit/b2e8b25930c953ef893e7c787fe350f0d8679ee2))
* **main:** release 0.4.3 ([#122](https://github.com/defenseunicorns/uds-common/issues/122)) ([859a9b2](https://github.com/defenseunicorns/uds-common/commit/859a9b2469c8a6c24c414fe34b127ec5677aea62))
* **main:** release 0.4.4 ([#136](https://github.com/defenseunicorns/uds-common/issues/136)) ([6e6f60b](https://github.com/defenseunicorns/uds-common/commit/6e6f60bef00842dffbde8409b466256e5a478e78))
* **main:** release 0.4.5 ([#139](https://github.com/defenseunicorns/uds-common/issues/139)) ([11e591f](https://github.com/defenseunicorns/uds-common/commit/11e591f2ec7d158923d973c85097ce28a5f55db4))
* **main:** release 0.4.6 ([#142](https://github.com/defenseunicorns/uds-common/issues/142)) ([7cb81b1](https://github.com/defenseunicorns/uds-common/commit/7cb81b1d4d9853c838200906e17a1c798a2d835e))
* **main:** release 0.5.0 ([#149](https://github.com/defenseunicorns/uds-common/issues/149)) ([4cea6c8](https://github.com/defenseunicorns/uds-common/commit/4cea6c8858b9f4db3a3624a6fc046db77e1f4eaa))
* **main:** release 0.5.1 ([#151](https://github.com/defenseunicorns/uds-common/issues/151)) ([d50b4eb](https://github.com/defenseunicorns/uds-common/commit/d50b4ebe3712fea4114289db0c36da61a5f60eb5))
* **main:** release 0.6.0 ([#152](https://github.com/defenseunicorns/uds-common/issues/152)) ([61450a2](https://github.com/defenseunicorns/uds-common/commit/61450a210fd16cf14157ee417f9682a4664c05e5))
* **main:** release 0.6.1 ([#156](https://github.com/defenseunicorns/uds-common/issues/156)) ([0901c37](https://github.com/defenseunicorns/uds-common/commit/0901c37366f37fea586768c79708e14e964e714e))
* **main:** release 0.7.0 ([#159](https://github.com/defenseunicorns/uds-common/issues/159)) ([b887451](https://github.com/defenseunicorns/uds-common/commit/b887451af5bc7edb3f1b040349a3405b018fe48a))
* **main:** release 0.7.1 ([#167](https://github.com/defenseunicorns/uds-common/issues/167)) ([772b333](https://github.com/defenseunicorns/uds-common/commit/772b3337950b7c8e0882c527263684306bba7ce4))
* **main:** release 0.8.0 ([#168](https://github.com/defenseunicorns/uds-common/issues/168)) ([172a905](https://github.com/defenseunicorns/uds-common/commit/172a905901cb9bd76d096d2850bf31af5c5a4fa1))
* **main:** release 0.8.1 ([#177](https://github.com/defenseunicorns/uds-common/issues/177)) ([a7549ad](https://github.com/defenseunicorns/uds-common/commit/a7549ad75a9bbd8e71ce2236ec17c1e33ec4df61))
* **main:** release 0.8.2 ([#182](https://github.com/defenseunicorns/uds-common/issues/182)) ([58f7e05](https://github.com/defenseunicorns/uds-common/commit/58f7e0567e74f9c02b19d8ddd6448b413b1384fd))
* **main:** release 0.9.0 ([#185](https://github.com/defenseunicorns/uds-common/issues/185)) ([91515ef](https://github.com/defenseunicorns/uds-common/commit/91515ef86914334356c35ffb4b2c2c5fb4d19174))
* **main:** release 1.0.0 ([#251](https://github.com/defenseunicorns/uds-common/issues/251)) ([03958ef](https://github.com/defenseunicorns/uds-common/commit/03958ef7a63d60075caa6172af19b41d4d6b4b0f))
* **main:** release 1.0.0 ([#268](https://github.com/defenseunicorns/uds-common/issues/268)) ([445cf34](https://github.com/defenseunicorns/uds-common/commit/445cf3498d9ffe47013dfc2912ca651a426eb4d2))
* **main:** release 1.0.0 ([#270](https://github.com/defenseunicorns/uds-common/issues/270)) ([125add1](https://github.com/defenseunicorns/uds-common/commit/125add12ce295f0bbfad8225081e768b98ec4af5))
* **main:** release 1.0.0 ([#271](https://github.com/defenseunicorns/uds-common/issues/271)) ([0780ed6](https://github.com/defenseunicorns/uds-common/commit/0780ed64a7b76920526046b8c3b8c7251a4bf2f0))
* **main:** release 1.0.0 ([#273](https://github.com/defenseunicorns/uds-common/issues/273)) ([879295b](https://github.com/defenseunicorns/uds-common/commit/879295b9714bc7fa5fe7db7b4de2c245f1b406e7))
* **main:** release 1.0.0 ([#280](https://github.com/defenseunicorns/uds-common/issues/280)) ([8688601](https://github.com/defenseunicorns/uds-common/commit/86886015d1edc43036b3dd000fbd972a384beb8f))
* **main:** release 1.1.0 ([#285](https://github.com/defenseunicorns/uds-common/issues/285)) ([f016462](https://github.com/defenseunicorns/uds-common/commit/f0164622ffc2007e96a0e1deaa3f5064db04b148))
* **main:** release 1.1.1 ([#298](https://github.com/defenseunicorns/uds-common/issues/298)) ([97fc3a0](https://github.com/defenseunicorns/uds-common/commit/97fc3a00fb2b9897316131cd210026691e160d5a))
* **main:** release 1.1.2 ([#317](https://github.com/defenseunicorns/uds-common/issues/317)) ([c52077c](https://github.com/defenseunicorns/uds-common/commit/c52077c870a576d01f169f96d74d1b393c6488ba))
* **main:** release 1.2.0 ([#319](https://github.com/defenseunicorns/uds-common/issues/319)) ([2a5e66f](https://github.com/defenseunicorns/uds-common/commit/2a5e66fceb5c506008d5f69f42abcf38ccf86b44))
* **main:** release 1.2.1 ([#325](https://github.com/defenseunicorns/uds-common/issues/325)) ([5a59ac8](https://github.com/defenseunicorns/uds-common/commit/5a59ac893e45f6844d6b82eebebda31cf7da8600))
* **main:** release 1.2.2 ([#327](https://github.com/defenseunicorns/uds-common/issues/327)) ([d59b1c6](https://github.com/defenseunicorns/uds-common/commit/d59b1c601730bfa7ab76439643242358e529603e))
* **main:** release 1.3.0 ([#330](https://github.com/defenseunicorns/uds-common/issues/330)) ([164ce64](https://github.com/defenseunicorns/uds-common/commit/164ce64c5cc775193a563db7e8ef9750ffefcdda))
* **main:** release 1.4.0 ([#342](https://github.com/defenseunicorns/uds-common/issues/342)) ([5b91b1e](https://github.com/defenseunicorns/uds-common/commit/5b91b1e0809cc34b397cf3914cda81e32ccb85b2))
* **main:** release 1.5.0 ([#350](https://github.com/defenseunicorns/uds-common/issues/350)) ([d0c5fbb](https://github.com/defenseunicorns/uds-common/commit/d0c5fbbbdc1a5c8c0f6a5e96cdee6909c98d712e))
* make all Maru references local includes ([#287](https://github.com/defenseunicorns/uds-common/issues/287)) ([727db0f](https://github.com/defenseunicorns/uds-common/commit/727db0fae26a4397361bab84de18dd253a755c79))
* make yamllint easier to run locally ([#312](https://github.com/defenseunicorns/uds-common/issues/312)) ([f44b244](https://github.com/defenseunicorns/uds-common/commit/f44b244c96f948e1193244067307642b6e9953cb))
* modify helm matches to handle git and helm ([#238](https://github.com/defenseunicorns/uds-common/issues/238)) ([803d9fe](https://github.com/defenseunicorns/uds-common/commit/803d9fed89bd890c1203c618a1e3fda1bd495cbd))
* pull debug / log actions from uds-core ([#135](https://github.com/defenseunicorns/uds-common/issues/135)) ([b3c9928](https://github.com/defenseunicorns/uds-common/commit/b3c99286e4200c98a61d86484030f2be5ebb5c70))
* pull the current bundle and package names when deploying ([#103](https://github.com/defenseunicorns/uds-common/issues/103)) ([4b27106](https://github.com/defenseunicorns/uds-common/commit/4b27106a55775b725be217818f4be8d711340e95))
* refactor and improve badge verification task ([#249](https://github.com/defenseunicorns/uds-common/issues/249)) ([82e63be](https://github.com/defenseunicorns/uds-common/commit/82e63be82766a2e550a847af904b2d738c9d3478))
* refine package selection logic for publishing ([#207](https://github.com/defenseunicorns/uds-common/issues/207)) ([7e1c03a](https://github.com/defenseunicorns/uds-common/commit/7e1c03abede1d4a3f91bb122fe5fff6abbb73311))
* release 0.1.0 ([a406df1](https://github.com/defenseunicorns/uds-common/commit/a406df1e05713260d9d14ce4deded7ba9700e597))
* remove reviewers from renovate ([ffa675b](https://github.com/defenseunicorns/uds-common/commit/ffa675b67c4d863de43def10ccc1f538326da42b))
* remove schedule on renovate ([#85](https://github.com/defenseunicorns/uds-common/issues/85)) ([fda7e57](https://github.com/defenseunicorns/uds-common/commit/fda7e57ad878cc70bf3905948911daa84c67db27))
* **renovate:** prefer opentofu registry for providers ([#230](https://github.com/defenseunicorns/uds-common/issues/230)) ([443fd0f](https://github.com/defenseunicorns/uds-common/commit/443fd0f1401ea496d5f39b43383d910f9f737871))
* switch to uds zarf ([d1fcde7](https://github.com/defenseunicorns/uds-common/commit/d1fcde70ed8dc19cdb64fc3e4afcfbf6b84ddca4))
* update @ renovate rule to be more brewey ([fc967d3](https://github.com/defenseunicorns/uds-common/commit/fc967d3e860c41fcfa652814d2d98b874a4cc8f9))
* update @ renovate rule to be more brewey ([f6c0d3a](https://github.com/defenseunicorns/uds-common/commit/f6c0d3a78ca3ce173ace364f7cbcce5856c7057a))
* update codeowners ([#105](https://github.com/defenseunicorns/uds-common/issues/105)) ([2e23ae3](https://github.com/defenseunicorns/uds-common/commit/2e23ae3a9a70189ca7d9671f3454158bb71a7ed6))
* update CODEOWNERS with more specific permissions ([#175](https://github.com/defenseunicorns/uds-common/issues/175)) ([f2b7220](https://github.com/defenseunicorns/uds-common/commit/f2b722051014d64d350bd34ea087e6ffb3daf428))
* update package practices with a bit more feedback ([#129](https://github.com/defenseunicorns/uds-common/issues/129)) ([af34fc9](https://github.com/defenseunicorns/uds-common/commit/af34fc90104c57d11a08678186b8b2aeaaac135d))
* update practices around maintaining the UDS Common framework ([#253](https://github.com/defenseunicorns/uds-common/issues/253)) ([a733122](https://github.com/defenseunicorns/uds-common/commit/a7331224f153532361d32d0b02de6cbe7361ffe3))
* update publish to take architecture as an input ([#143](https://github.com/defenseunicorns/uds-common/issues/143)) ([62620f5](https://github.com/defenseunicorns/uds-common/commit/62620f59c14c773e5f6f07aaafc70ae34cff36bd))
* update registry login to happen in the common env setup action ([#88](https://github.com/defenseunicorns/uds-common/issues/88)) ([b7bce88](https://github.com/defenseunicorns/uds-common/commit/b7bce888d1d62c5d382d7d88a54e59da72e0d3ae))
* update the codeowners for the repo ([#264](https://github.com/defenseunicorns/uds-common/issues/264)) ([6359020](https://github.com/defenseunicorns/uds-common/commit/6359020fa85b88f3360d0813f3da1d5e1f51134c))
* update the license to AGPLv3 or Commercial ([#286](https://github.com/defenseunicorns/uds-common/issues/286)) ([2a9ca00](https://github.com/defenseunicorns/uds-common/commit/2a9ca00409f3bb513d2f256bcf1a91146b94d514))
* update to actionable tasks ([01a4736](https://github.com/defenseunicorns/uds-common/commit/01a4736f5f859ebfcb72efea6fb254fd7793e4be))
* update uds-package-requirements with new CODEOWNERS reqs ([#339](https://github.com/defenseunicorns/uds-common/issues/339)) ([462b7e9](https://github.com/defenseunicorns/uds-common/commit/462b7e9d45bcfdf5fae54b09cd51e112a713214a))
* update uds-package-requirements.md ([#306](https://github.com/defenseunicorns/uds-common/issues/306)) ([b7a6f09](https://github.com/defenseunicorns/uds-common/commit/b7a6f097014733e03b2f0b763e4654f3d3c89f78))
* update workflow permissions ([#321](https://github.com/defenseunicorns/uds-common/issues/321)) ([9f5c844](https://github.com/defenseunicorns/uds-common/commit/9f5c844238529b92eef7ee97f1b6f5713ec371ca))
* upgrade uds cli-cli to v0.11.2 ([#150](https://github.com/defenseunicorns/uds-common/issues/150)) ([3f23c6d](https://github.com/defenseunicorns/uds-common/commit/3f23c6d9845cec860851f4476e54eb0199e20625))

## [1.5.0](https://github.com/defenseunicorns/uds-common/compare/v1.4.0...v1.5.0) (2024-12-06)


### ⚠ BREAKING CHANGES

* **deps:** update uds common support dependencies ([#354](https://github.com/defenseunicorns/uds-common/issues/354))

### Features

* provide uds-releaser option for publishing uds packages ([#341](https://github.com/defenseunicorns/uds-common/issues/341)) ([62f8c28](https://github.com/defenseunicorns/uds-common/commit/62f8c28b2db62a0fbcbad5a7a639c65de2359696))


### Bug Fixes

* check tests directories in renovate updates ([#351](https://github.com/defenseunicorns/uds-common/issues/351)) ([61385c2](https://github.com/defenseunicorns/uds-common/commit/61385c2fc0463e125e1914d59c4d7288976c5628))


### Miscellaneous

* **deps:** update uds common package dependencies to v1.27.3 ([#349](https://github.com/defenseunicorns/uds-common/issues/349)) ([4fbe49f](https://github.com/defenseunicorns/uds-common/commit/4fbe49f520cfa2c8ca38a39b829a7b2c782bae47))
* **deps:** update uds common support dependencies ([#348](https://github.com/defenseunicorns/uds-common/issues/348)) ([4430e46](https://github.com/defenseunicorns/uds-common/commit/4430e46bcd30092cb25e24bc278b54602602c3fb))
* **deps:** update uds common support dependencies ([#354](https://github.com/defenseunicorns/uds-common/issues/354)) ([511d894](https://github.com/defenseunicorns/uds-common/commit/511d8940991eaba185dd52d11a3d37efa7defcd8))

## [1.4.0](https://github.com/defenseunicorns/uds-common/compare/v1.3.0...v1.4.0) (2024-11-22)


### Features

* login to ghcr from gitlab for upgrade tests and avoiding rate limiting ([#343](https://github.com/defenseunicorns/uds-common/issues/343)) ([e299d1c](https://github.com/defenseunicorns/uds-common/commit/e299d1c9b6c8d1cb9af3f087e62a98ba2793bbd9))


### Miscellaneous

* **deps:** update uds common support dependencies ([#344](https://github.com/defenseunicorns/uds-common/issues/344)) ([9365b36](https://github.com/defenseunicorns/uds-common/commit/9365b36350a93b263a7248c41229684241959691))
* **deps:** update uds common support dependencies to v0.32.0 ([#347](https://github.com/defenseunicorns/uds-common/issues/347)) ([14f4841](https://github.com/defenseunicorns/uds-common/commit/14f48411704c4df466f3f5c47f6cb90e84a592fb))
* fix broken links and change name of package integration guide ([#346](https://github.com/defenseunicorns/uds-common/issues/346)) ([c470dea](https://github.com/defenseunicorns/uds-common/commit/c470dea2c0dc108164ceab9acb7b567af703a48e))
* update uds-package-requirements with new CODEOWNERS reqs ([#339](https://github.com/defenseunicorns/uds-common/issues/339)) ([462b7e9](https://github.com/defenseunicorns/uds-common/commit/462b7e9d45bcfdf5fae54b09cd51e112a713214a))

## [1.3.0](https://github.com/defenseunicorns/uds-common/compare/v1.2.2...v1.3.0) (2024-11-18)


### Features

* allow keycloak_group to be specified as input in create-doug-user task ([#332](https://github.com/defenseunicorns/uds-common/issues/332)) ([cf7cbdd](https://github.com/defenseunicorns/uds-common/commit/cf7cbddefc1abf96bab238fa185908eab1da194c))


### Bug Fixes

* add git reset in upgrade-test directory for better local devx ([#337](https://github.com/defenseunicorns/uds-common/issues/337)) ([2c0ca17](https://github.com/defenseunicorns/uds-common/commit/2c0ca174540f4a138648c56058e5a1216d62c617))
* gitlab publish being broken due to bash weirdness ([#329](https://github.com/defenseunicorns/uds-common/issues/329)) ([e7a3c69](https://github.com/defenseunicorns/uds-common/commit/e7a3c6969cb77c1560da2ae93f48cb5759a002f2))
* update UDS Opeator link in guide.md ([#336](https://github.com/defenseunicorns/uds-common/issues/336)) ([66cbe6f](https://github.com/defenseunicorns/uds-common/commit/66cbe6f63597d1eeeb9c177084067bc90aa0d469))
* use flavor from inputs instead of $FLAVOR variable ([#335](https://github.com/defenseunicorns/uds-common/issues/335)) ([398bbe5](https://github.com/defenseunicorns/uds-common/commit/398bbe58d5eac6f365b705a8fad80a7eb920202b))


### Miscellaneous

* **deps:** update uds common support dependencies ([#334](https://github.com/defenseunicorns/uds-common/issues/334)) ([d95aafa](https://github.com/defenseunicorns/uds-common/commit/d95aafabbc53c6f3c6034c71bdee28f4841733eb))

## [1.2.2](https://github.com/defenseunicorns/uds-common/compare/v1.2.1...v1.2.2) (2024-10-29)


### Features

* allow alternate paths for the check flavor zarf.yaml ([#326](https://github.com/defenseunicorns/uds-common/issues/326)) ([d3ecafd](https://github.com/defenseunicorns/uds-common/commit/d3ecafdf8a124c8b722b34e41097bf08fe5b8036))


### Miscellaneous

* **deps:** update uds common support dependencies to v0.30.0 ([#328](https://github.com/defenseunicorns/uds-common/issues/328)) ([2c8bb0d](https://github.com/defenseunicorns/uds-common/commit/2c8bb0dfdd86611b32601fc9c4083fba6ea735aa))

## [1.2.1](https://github.com/defenseunicorns/uds-common/compare/v1.2.0...v1.2.1) (2024-10-28)


### Bug Fixes

* pull mv command to use latest version ([#324](https://github.com/defenseunicorns/uds-common/issues/324)) ([3512549](https://github.com/defenseunicorns/uds-common/commit/3512549b418c115f5ff48df5e067c2790bdfd122))


### Miscellaneous

* **deps:** update uds common support dependencies ([#320](https://github.com/defenseunicorns/uds-common/issues/320)) ([7dded2a](https://github.com/defenseunicorns/uds-common/commit/7dded2aa68a1f1c9b51960d870f698c976d0c1a4))

## [1.2.0](https://github.com/defenseunicorns/uds-common/compare/v1.1.2...v1.2.0) (2024-10-25)


### Features

* support gitlab ([#283](https://github.com/defenseunicorns/uds-common/issues/283)) ([9ac2019](https://github.com/defenseunicorns/uds-common/commit/9ac201912622886aa6c6a25c1d0cd086b23b5567))


### Bug Fixes

* don't fail if `zarf.yaml` not found in tag ([#322](https://github.com/defenseunicorns/uds-common/issues/322)) ([e4ef2ab](https://github.com/defenseunicorns/uds-common/commit/e4ef2ab9d752acfd0323eb551d84822311708b25))


### Miscellaneous

* **deps:** update support-deps to v3.27.0 ([#318](https://github.com/defenseunicorns/uds-common/issues/318)) ([8b6e67e](https://github.com/defenseunicorns/uds-common/commit/8b6e67e8f0ffa1300a75bc3d8d1df916dbddb2f8))
* update workflow permissions ([#321](https://github.com/defenseunicorns/uds-common/issues/321)) ([9f5c844](https://github.com/defenseunicorns/uds-common/commit/9f5c844238529b92eef7ee97f1b6f5713ec371ca))

## [1.1.2](https://github.com/defenseunicorns/uds-common/compare/v1.1.1...v1.1.2) (2024-10-22)


### Miscellaneous

* **docs:** update CODEOWNERS example ([#302](https://github.com/defenseunicorns/uds-common/issues/302)) ([cf9959f](https://github.com/defenseunicorns/uds-common/commit/cf9959f7121f35b56748d62df5400d4ed3ac273d))
* improve badge verification and dep installs ([#316](https://github.com/defenseunicorns/uds-common/issues/316)) ([047cc5b](https://github.com/defenseunicorns/uds-common/commit/047cc5b52dacfbc77a60b2ea13d507237451c529))

## [1.1.1](https://github.com/defenseunicorns/uds-common/compare/v1.1.0...v1.1.1) (2024-10-18)


### Bug Fixes

* lint:deps producing unwanted file ([#297](https://github.com/defenseunicorns/uds-common/issues/297)) ([94db603](https://github.com/defenseunicorns/uds-common/commit/94db6033619ea5b62d00de52961bd7b5fa969517))
* timeout too short on test workflows - allow adjustment on test/publish ([#314](https://github.com/defenseunicorns/uds-common/issues/314)) ([6ac1587](https://github.com/defenseunicorns/uds-common/commit/6ac1587f0553ed91e1f0a2f662e59dd0839d10a7))


### Miscellaneous

* add if to only run the clean runner task on ubuntu-latest ([#309](https://github.com/defenseunicorns/uds-common/issues/309)) ([10377e8](https://github.com/defenseunicorns/uds-common/commit/10377e875c105c69b2233cf8f0703c1951b2ebf1))
* adds check for addlicense ([#303](https://github.com/defenseunicorns/uds-common/issues/303)) ([4fef014](https://github.com/defenseunicorns/uds-common/commit/4fef014b93368ac2b2cff8b01a6ab997db12a660))
* **deps:** update uds common support dependencies ([#305](https://github.com/defenseunicorns/uds-common/issues/305)) ([429058f](https://github.com/defenseunicorns/uds-common/commit/429058f7a8a3e670ef59c0d385a4b58f90a31387))
* **deps:** update uds common support dependencies to v0.29.1 ([#313](https://github.com/defenseunicorns/uds-common/issues/313)) ([bd27cc8](https://github.com/defenseunicorns/uds-common/commit/bd27cc8f5b08940626276ca338c9bf864bc5f054))
* **docs:** fix overwritten requirement for metadata ([#296](https://github.com/defenseunicorns/uds-common/issues/296)) ([07fd1d3](https://github.com/defenseunicorns/uds-common/commit/07fd1d330374a79f0ff3278d972155ef80d83313))
* improve task checks/linting and allow more options on test/publish ([#311](https://github.com/defenseunicorns/uds-common/issues/311)) ([894a2ce](https://github.com/defenseunicorns/uds-common/commit/894a2ce4d9c26015cc4842644c20eb92a9acd2a3))
* make yamllint easier to run locally ([#312](https://github.com/defenseunicorns/uds-common/issues/312)) ([f44b244](https://github.com/defenseunicorns/uds-common/commit/f44b244c96f948e1193244067307642b6e9953cb))
* update uds-package-requirements.md ([#306](https://github.com/defenseunicorns/uds-common/issues/306)) ([b7a6f09](https://github.com/defenseunicorns/uds-common/commit/b7a6f097014733e03b2f0b763e4654f3d3c89f78))

## [1.1.0](https://github.com/defenseunicorns/uds-common/compare/v1.0.0...v1.1.0) (2024-10-11)


### ⚠ BREAKING CHANGES

* update the license to AGPLv3 or Commercial ([#286](https://github.com/defenseunicorns/uds-common/issues/286))

### Bug Fixes

* modified jq command ([#292](https://github.com/defenseunicorns/uds-common/issues/292)) ([d566e86](https://github.com/defenseunicorns/uds-common/commit/d566e86c5a78f2124116113ea3ed35695caec5be))
* simplify git command for flavor checks ([#290](https://github.com/defenseunicorns/uds-common/issues/290)) ([72c4e35](https://github.com/defenseunicorns/uds-common/commit/72c4e35d5f9f6ed877c184cf748e67a77e4fa771))
* upgrade test not cloning in private repos ([#295](https://github.com/defenseunicorns/uds-common/issues/295)) ([1dde808](https://github.com/defenseunicorns/uds-common/commit/1dde808b943c554edcd401fb814d504ee74117c0))


### Miscellaneous

* **badging:** include unicorn flavor suggstion for bronze ([#288](https://github.com/defenseunicorns/uds-common/issues/288)) ([f668b06](https://github.com/defenseunicorns/uds-common/commit/f668b06f1597efd3c701a47ce28de1d8f298b1b8))
* **deps:** update support-deps to v4.4.3 ([#282](https://github.com/defenseunicorns/uds-common/issues/282)) ([13d35ef](https://github.com/defenseunicorns/uds-common/commit/13d35ef9831c71cc217ef43f2c13562f40a3ec5b))
* **deps:** update uds common package dependencies to v1.27.2 ([#229](https://github.com/defenseunicorns/uds-common/issues/229)) ([5b6a722](https://github.com/defenseunicorns/uds-common/commit/5b6a7223469bddf79be079baab1e3333a01c71e5))
* disable stale PR rebasing for renovate ([#284](https://github.com/defenseunicorns/uds-common/issues/284)) ([27ca69e](https://github.com/defenseunicorns/uds-common/commit/27ca69e53d980672b655b03ee854d2e7ea0462dc))
* have addlicense ignore gitignored files ([#294](https://github.com/defenseunicorns/uds-common/issues/294)) ([1bf662e](https://github.com/defenseunicorns/uds-common/commit/1bf662e890a238bf49234e9768d5fa7078d4fdb3))
* make all Maru references local includes ([#287](https://github.com/defenseunicorns/uds-common/issues/287)) ([727db0f](https://github.com/defenseunicorns/uds-common/commit/727db0fae26a4397361bab84de18dd253a755c79))
* update the license to AGPLv3 or Commercial ([#286](https://github.com/defenseunicorns/uds-common/issues/286)) ([2a9ca00](https://github.com/defenseunicorns/uds-common/commit/2a9ca00409f3bb513d2f256bcf1a91146b94d514))

## [1.0.0](https://github.com/defenseunicorns/uds-common/compare/v0.13.1...v1.0.0) (2024-10-07)


### ⚠ BREAKING CHANGES

* remove with.assessment_results from oscal tasks ([#276](https://github.com/defenseunicorns/uds-common/issues/276))
* update the publish task to avoid name collision ([#267](https://github.com/defenseunicorns/uds-common/issues/267))
* **task:** add optional config input to create, deploy package and bundle tasks ([#262](https://github.com/defenseunicorns/uds-common/issues/262))
* add shell linting to uds-common linting ([#258](https://github.com/defenseunicorns/uds-common/issues/258))
* update uds common gh actions to use uds run conditionals ([#254](https://github.com/defenseunicorns/uds-common/issues/254))

### Features

* **task:** add optional config input to create, deploy package and bundle tasks ([#262](https://github.com/defenseunicorns/uds-common/issues/262)) ([3d3e9cb](https://github.com/defenseunicorns/uds-common/commit/3d3e9cb82e6664a4250782e6ae3a4e1112cfe5be))
* update uds common gh actions to use uds run conditionals ([#254](https://github.com/defenseunicorns/uds-common/issues/254)) ([c9d92f0](https://github.com/defenseunicorns/uds-common/commit/c9d92f0481d147e362d359447b487ab1c1560f31))


### Bug Fixes

* add runner.arch to upload-artifacts name ([#269](https://github.com/defenseunicorns/uds-common/issues/269)) ([4abe414](https://github.com/defenseunicorns/uds-common/commit/4abe414fa5460bc9e98b53f2e830b41e2e01cf26))
* add test artifact uploads to callable workflows ([#275](https://github.com/defenseunicorns/uds-common/issues/275)) ([02e5c07](https://github.com/defenseunicorns/uds-common/commit/02e5c072465f1b06a05760fd4d1d12e070c22155))
* broken hyperlink in guide.md ([#272](https://github.com/defenseunicorns/uds-common/issues/272)) ([6b152a4](https://github.com/defenseunicorns/uds-common/commit/6b152a4905ce4b8d212519e3fff4ff99dbaf7e50))
* refactor top level tasks ([#277](https://github.com/defenseunicorns/uds-common/issues/277)) ([b7f6894](https://github.com/defenseunicorns/uds-common/commit/b7f68947d4082a7cb3128271476f65c61b3a9261))
* remove with.assessment_results from oscal tasks ([#276](https://github.com/defenseunicorns/uds-common/issues/276)) ([bb8bb4b](https://github.com/defenseunicorns/uds-common/commit/bb8bb4b4df897b8aa747f5fe6e3ddd3fa40017b9))
* test/publish workflow upload and default behavior ([#279](https://github.com/defenseunicorns/uds-common/issues/279)) ([1851a1c](https://github.com/defenseunicorns/uds-common/commit/1851a1cb3f532f83a70c09e8bb513fcc6bb64bd1))
* update publish permissions ([#263](https://github.com/defenseunicorns/uds-common/issues/263)) ([2e57869](https://github.com/defenseunicorns/uds-common/commit/2e57869b41d1f523ca37b2a3da035a580fc7d6d0))
* update the publish task to avoid name collision ([#267](https://github.com/defenseunicorns/uds-common/issues/267)) ([6a176ff](https://github.com/defenseunicorns/uds-common/commit/6a176ffd18ece28b759eb4e20f2e082ff0e079fb))


### Miscellaneous

* add an ADR to document workflow/job names ([#260](https://github.com/defenseunicorns/uds-common/issues/260)) ([0685c7c](https://github.com/defenseunicorns/uds-common/commit/0685c7cac904ebe5f746770f9488210498d4463d))
* add shell linting to uds-common linting ([#258](https://github.com/defenseunicorns/uds-common/issues/258)) ([82e9137](https://github.com/defenseunicorns/uds-common/commit/82e9137642cb5dc0ba41cb33ad1ae44258549d19))
* correct the release workflow path on README ([#265](https://github.com/defenseunicorns/uds-common/issues/265)) ([62c9a5f](https://github.com/defenseunicorns/uds-common/commit/62c9a5f0a14a8215d5d7e55e1b11d0d77003c8e1))
* **deps:** update uds common support dependencies ([#250](https://github.com/defenseunicorns/uds-common/issues/250)) ([c828932](https://github.com/defenseunicorns/uds-common/commit/c82893264fffadfd0d84ca239a9459e6e55b9635))
* **docs:** restructure and introduce metadata guidelines ([#266](https://github.com/defenseunicorns/uds-common/issues/266)) ([6828f10](https://github.com/defenseunicorns/uds-common/commit/6828f10932a65d5fbbaf5994e2c23ddd1cd27255))
* refactor and improve badge verification task ([#249](https://github.com/defenseunicorns/uds-common/issues/249)) ([82e63be](https://github.com/defenseunicorns/uds-common/commit/82e63be82766a2e550a847af904b2d738c9d3478))
* update practices around maintaining the UDS Common framework ([#253](https://github.com/defenseunicorns/uds-common/issues/253)) ([a733122](https://github.com/defenseunicorns/uds-common/commit/a7331224f153532361d32d0b02de6cbe7361ffe3))
* update the codeowners for the repo ([#264](https://github.com/defenseunicorns/uds-common/issues/264)) ([6359020](https://github.com/defenseunicorns/uds-common/commit/6359020fa85b88f3360d0813f3da1d5e1f51134c))
* **deps:** update uds common support dependencies ([#278](https://github.com/defenseunicorns/uds-common/issues/278)) ([e71432f](https://github.com/defenseunicorns/uds-common/commit/e71432f261fa03b60c7bf5845e749476390e104b))

## [0.13.1](https://github.com/defenseunicorns/uds-common/compare/v0.13.0...v0.13.1) (2024-09-23)


### Bug Fixes

* allow dependent bundle commands to be run on upgrade tests ([#241](https://github.com/defenseunicorns/uds-common/issues/241)) ([093def2](https://github.com/defenseunicorns/uds-common/commit/093def2f245709084c079aaf529a604d8ca5b6c2))


### Miscellaneous

* **deps:** update uds common support dependencies ([#237](https://github.com/defenseunicorns/uds-common/issues/237)) ([eac2f68](https://github.com/defenseunicorns/uds-common/commit/eac2f686deacb898a6383fcc73c861293db52b9c))
* modify helm matches to handle git and helm ([#238](https://github.com/defenseunicorns/uds-common/issues/238)) ([803d9fe](https://github.com/defenseunicorns/uds-common/commit/803d9fed89bd890c1203c618a1e3fda1bd495cbd))

## [0.13.0](https://github.com/defenseunicorns/uds-common/compare/v0.12.0...v0.13.0) (2024-09-19)


### Features

* add action for assisting with badge verification and migrate to nginx ([#191](https://github.com/defenseunicorns/uds-common/issues/191)) ([79a5edf](https://github.com/defenseunicorns/uds-common/commit/79a5edfe7f5d9a4d1611289dbadf643c07850081))
* add options support to setup to set vars and other flags on uds-core ([#235](https://github.com/defenseunicorns/uds-common/issues/235)) ([4336357](https://github.com/defenseunicorns/uds-common/commit/433635708b47c3f420990582a6a813a710d44423))


### Bug Fixes

* mandate yamllint at least 1.30.0 to guarantee features in use ([#224](https://github.com/defenseunicorns/uds-common/issues/224)) ([61929ac](https://github.com/defenseunicorns/uds-common/commit/61929ac82c3e4b635a5e1673975ab29964001ce4))


### Miscellaneous

* add uds-marketplace to codeowners ([#225](https://github.com/defenseunicorns/uds-common/issues/225)) ([ff9a8d9](https://github.com/defenseunicorns/uds-common/commit/ff9a8d943f4e7e926d243dabecfe0c585e946ba0))
* **deps:** update uds common nginx package ([#223](https://github.com/defenseunicorns/uds-common/issues/223)) ([688197c](https://github.com/defenseunicorns/uds-common/commit/688197cfcfdf2e14c222f82c59d27904fd1753bb))
* **deps:** update uds common support dependencies ([#216](https://github.com/defenseunicorns/uds-common/issues/216)) ([a597644](https://github.com/defenseunicorns/uds-common/commit/a597644480afb2e8c1685ca067a7e838c6f14570))
* **deps:** update uds common support dependencies ([#221](https://github.com/defenseunicorns/uds-common/issues/221)) ([bd6459f](https://github.com/defenseunicorns/uds-common/commit/bd6459f057c236a6ca28e8fc6ec9af2821be9c00))
* **deps:** update uds common support dependencies ([#228](https://github.com/defenseunicorns/uds-common/issues/228)) ([b34e017](https://github.com/defenseunicorns/uds-common/commit/b34e01747bc81b098b63cdf2a820dd644a7c6725))
* **deps:** update uds common support dependencies ([#236](https://github.com/defenseunicorns/uds-common/issues/236)) ([ba37ec2](https://github.com/defenseunicorns/uds-common/commit/ba37ec2db2d56afd2b7e63c00bd19eebd1dd8ddc))
* **renovate:** prefer opentofu registry for providers ([#230](https://github.com/defenseunicorns/uds-common/issues/230)) ([443fd0f](https://github.com/defenseunicorns/uds-common/commit/443fd0f1401ea496d5f39b43383d910f9f737871))

## [0.12.0](https://github.com/defenseunicorns/uds-common/compare/v0.11.2...v0.12.0) (2024-08-22)


### ⚠ BREAKING CHANGES

* changed latest-package behavior ([#206](https://github.com/defenseunicorns/uds-common/issues/206))

### Features

* changed latest-package behavior ([#206](https://github.com/defenseunicorns/uds-common/issues/206)) ([eb0253c](https://github.com/defenseunicorns/uds-common/commit/eb0253c3174ec6553b00c52022aa0818049a8036))


### Bug Fixes

* upgrade version tests ([#215](https://github.com/defenseunicorns/uds-common/issues/215)) ([d48167a](https://github.com/defenseunicorns/uds-common/commit/d48167a5f999dc5ffd91e6b5878ab158e55f1a6c))


### Miscellaneous

* **deps:** update uds common support dependencies ([#210](https://github.com/defenseunicorns/uds-common/issues/210)) ([822dac4](https://github.com/defenseunicorns/uds-common/commit/822dac4452e6815aadcf09f487406ff258756a0c))
* **deps:** update uds common support dependencies ([#213](https://github.com/defenseunicorns/uds-common/issues/213)) ([7eb8a12](https://github.com/defenseunicorns/uds-common/commit/7eb8a123684bca1c3a7490f5d35ae7ae4598db60))

## [0.11.2](https://github.com/defenseunicorns/uds-common/compare/v0.11.1...v0.11.2) (2024-08-07)


### Miscellaneous

* refine package selection logic for publishing ([#207](https://github.com/defenseunicorns/uds-common/issues/207)) ([7e1c03a](https://github.com/defenseunicorns/uds-common/commit/7e1c03abede1d4a3f91bb122fe5fff6abbb73311))

## [0.11.1](https://github.com/defenseunicorns/uds-common/compare/v0.11.0...v0.11.1) (2024-08-06)


### Bug Fixes

* renovate ghcr host docker type ([#201](https://github.com/defenseunicorns/uds-common/issues/201)) ([9c298e0](https://github.com/defenseunicorns/uds-common/commit/9c298e08417ce928dbbf4356c23182f8b1a62ffb))
* renovate typo token/password ([#202](https://github.com/defenseunicorns/uds-common/issues/202)) ([5d7ea03](https://github.com/defenseunicorns/uds-common/commit/5d7ea03815929a662c529b2078bdf895d8f3ac1b))
* update renovate creds ([#200](https://github.com/defenseunicorns/uds-common/issues/200)) ([1c6eb24](https://github.com/defenseunicorns/uds-common/commit/1c6eb24f37b4059589a70c9addeffb80895d450b))


### Miscellaneous

* add renovate support for org ghcr packages ([#199](https://github.com/defenseunicorns/uds-common/issues/199)) ([2c5de9c](https://github.com/defenseunicorns/uds-common/commit/2c5de9cc41cad9d1e02faf39c0cad364933f335f))
* **deps:** update uds common support dependencies ([#195](https://github.com/defenseunicorns/uds-common/issues/195)) ([04b6409](https://github.com/defenseunicorns/uds-common/commit/04b64091ba0528463713f66d8167572a533e0c3d))
* fix codeowners ([#196](https://github.com/defenseunicorns/uds-common/issues/196)) ([856ef22](https://github.com/defenseunicorns/uds-common/commit/856ef221b39e65070e966942b42e79d408f59b76))

## [0.11.0](https://github.com/defenseunicorns/uds-common/compare/v0.10.0...v0.11.0) (2024-08-02)


### Features

* add support for uds-core snapshots ([#193](https://github.com/defenseunicorns/uds-common/issues/193)) ([7a39915](https://github.com/defenseunicorns/uds-common/commit/7a39915ceff7a1a9e319846042ab74390fda6f2b))


### Miscellaneous

* **deps:** update uds common support dependencies ([#187](https://github.com/defenseunicorns/uds-common/issues/187)) ([a0bbfb0](https://github.com/defenseunicorns/uds-common/commit/a0bbfb043e670a175fbdc44585e2bbb5b695acf7))

## [0.10.0](https://github.com/defenseunicorns/uds-common/compare/v0.9.0...v0.10.0) (2024-07-29)


### Features

* add task for determining target repo based on flavor ([#188](https://github.com/defenseunicorns/uds-common/issues/188)) ([6810324](https://github.com/defenseunicorns/uds-common/commit/681032402a315c8db80975571242ed8db73e78bf))

## [0.9.0](https://github.com/defenseunicorns/uds-common/compare/v0.8.2...v0.9.0) (2024-07-23)


### ⚠ BREAKING CHANGES

* update doug ci credential for new identity config req

### Bug Fixes

* update doug ci credential for new identity config req ([71340f7](https://github.com/defenseunicorns/uds-common/commit/71340f7d4fc0cd8fd6c44335b54e0b12769965d1))

## [0.8.2](https://github.com/defenseunicorns/uds-common/compare/v0.8.1...v0.8.2) (2024-07-23)


### Miscellaneous

* add additional install step to playwright install ([#183](https://github.com/defenseunicorns/uds-common/issues/183)) ([41855e4](https://github.com/defenseunicorns/uds-common/commit/41855e42bd73c67109ed42935f1e67ab7305ddda))
* **deps:** update uds common support dependencies ([#179](https://github.com/defenseunicorns/uds-common/issues/179)) ([e1a0d5a](https://github.com/defenseunicorns/uds-common/commit/e1a0d5acba2c0cc083af6ac2823d9cf068008453))
* fix the Zarf package renovate regex to the correct versionTemplate ([#181](https://github.com/defenseunicorns/uds-common/issues/181)) ([272b502](https://github.com/defenseunicorns/uds-common/commit/272b502fa2f36b3703f9cdcbdbfb579ce437a0d7))

## [0.8.1](https://github.com/defenseunicorns/uds-common/compare/v0.8.0...v0.8.1) (2024-07-18)


### Miscellaneous

* add cgr identity assume to setup action ([#180](https://github.com/defenseunicorns/uds-common/issues/180)) ([2ec74fb](https://github.com/defenseunicorns/uds-common/commit/2ec74fbe496c5cdcc88cd3f424951f11271fe5d6))
* fix version matching for UDS packages ([#176](https://github.com/defenseunicorns/uds-common/issues/176)) ([e068b6a](https://github.com/defenseunicorns/uds-common/commit/e068b6a255cc856e313485826a2140a3977c6b03))

## [0.8.0](https://github.com/defenseunicorns/uds-common/compare/v0.7.1...v0.8.0) (2024-07-12)


### Features

* **compliance:** add support for extra options on compliance validate ([#170](https://github.com/defenseunicorns/uds-common/issues/170)) ([d191505](https://github.com/defenseunicorns/uds-common/commit/d19150566784e51f7c8d31b7d37b6915cdacc410))


### Bug Fixes

* chainguard creds/renovate match ([#173](https://github.com/defenseunicorns/uds-common/issues/173)) ([49401cc](https://github.com/defenseunicorns/uds-common/commit/49401cc5c8000a661c6e1bc9e10e42fa6f6e2389))


### Miscellaneous

* add cgr.dev renovate rule ([#171](https://github.com/defenseunicorns/uds-common/issues/171)) ([68497f9](https://github.com/defenseunicorns/uds-common/commit/68497f95ffdccf5802da81f2f0c9a8f7f8fe912c))
* **deps:** update uds common support dependencies ([#164](https://github.com/defenseunicorns/uds-common/issues/164)) ([6c50f47](https://github.com/defenseunicorns/uds-common/commit/6c50f47ecd9c75483ab70953d5c31682362377c2))
* **deps:** update uds common support dependencies ([#169](https://github.com/defenseunicorns/uds-common/issues/169)) ([b6a4232](https://github.com/defenseunicorns/uds-common/commit/b6a4232cb030f3ea7e66041306b5cfcd9a488a98))
* update CODEOWNERS with more specific permissions ([#175](https://github.com/defenseunicorns/uds-common/issues/175)) ([f2b7220](https://github.com/defenseunicorns/uds-common/commit/f2b722051014d64d350bd34ea087e6ffb3daf428))

## [0.7.1](https://github.com/defenseunicorns/uds-common/compare/v0.7.0...v0.7.1) (2024-07-03)


### Miscellaneous

* fix commitlint workflow permissions ([#166](https://github.com/defenseunicorns/uds-common/issues/166)) ([d701196](https://github.com/defenseunicorns/uds-common/commit/d701196ed2b7b1507f6b7ad946e4a3e030fa3ca5))

## [0.7.0](https://github.com/defenseunicorns/uds-common/compare/v0.6.1...v0.7.0) (2024-06-28)


### Features

* add an image override to the renovate config ([#160](https://github.com/defenseunicorns/uds-common/issues/160)) ([ea2fcf1](https://github.com/defenseunicorns/uds-common/commit/ea2fcf105bb7bf6a560042191ee8b7f33757c785))
* **compliance:** lula validate and evaluate capability definitions ([#157](https://github.com/defenseunicorns/uds-common/issues/157)) ([b615d90](https://github.com/defenseunicorns/uds-common/commit/b615d90389523763d08b03f793abe5cdeeee55fc))


### Miscellaneous

* add dockerfile `ADD` support ([#162](https://github.com/defenseunicorns/uds-common/issues/162)) ([6854284](https://github.com/defenseunicorns/uds-common/commit/685428477abea23a2a20c311a135acc517558fc3))
* **deps:** update uds common package dependencies to v6.7.0 ([#158](https://github.com/defenseunicorns/uds-common/issues/158)) ([ef9c567](https://github.com/defenseunicorns/uds-common/commit/ef9c567a5aea13ba2dbf22b2790b78cacb113ab1))

## [0.6.1](https://github.com/defenseunicorns/uds-common/compare/v0.6.0...v0.6.1) (2024-06-20)


### Miscellaneous

* add a playwright setup action ([#155](https://github.com/defenseunicorns/uds-common/issues/155)) ([93720d9](https://github.com/defenseunicorns/uds-common/commit/93720d91189fc54c5f5302bb6af769621bc21b27))
* add the second raw URL and releases URL for GitHub to renovate config ([#154](https://github.com/defenseunicorns/uds-common/issues/154)) ([bdda4dc](https://github.com/defenseunicorns/uds-common/commit/bdda4dcbd201e279b83361d72ea448114af26522))

## [0.6.0](https://github.com/defenseunicorns/uds-common/compare/v0.5.1...v0.6.0) (2024-06-18)


### Features

* lula lint integration ([#147](https://github.com/defenseunicorns/uds-common/issues/147)) ([7f357e0](https://github.com/defenseunicorns/uds-common/commit/7f357e0b42859b0178e90047885494ee03542be7))


### Miscellaneous

* add a common bundle remove task ([#153](https://github.com/defenseunicorns/uds-common/issues/153)) ([f3b287c](https://github.com/defenseunicorns/uds-common/commit/f3b287c909c626e9f11d47b9e13d79312d3f3a99))
* **deps:** update uds common support dependencies ([#148](https://github.com/defenseunicorns/uds-common/issues/148)) ([b5854de](https://github.com/defenseunicorns/uds-common/commit/b5854de37ccb9e46751c17cecd8101411f9fac32))

## [0.5.1](https://github.com/defenseunicorns/uds-common/compare/v0.5.0...v0.5.1) (2024-06-12)


### Miscellaneous

* upgrade uds cli-cli to v0.11.2 ([#150](https://github.com/defenseunicorns/uds-common/issues/150)) ([3f23c6d](https://github.com/defenseunicorns/uds-common/commit/3f23c6d9845cec860851f4476e54eb0199e20625))

## [0.5.0](https://github.com/defenseunicorns/uds-common/compare/v0.4.6...v0.5.0) (2024-06-11)


### ⚠ BREAKING CHANGES

* update publish to take architecture as an input ([#143](https://github.com/defenseunicorns/uds-common/issues/143))

### Miscellaneous

* update publish to take architecture as an input ([#143](https://github.com/defenseunicorns/uds-common/issues/143)) ([62620f5](https://github.com/defenseunicorns/uds-common/commit/62620f59c14c773e5f6f07aaafc70ae34cff36bd))

## [0.4.6](https://github.com/defenseunicorns/uds-common/compare/v0.4.5...v0.4.6) (2024-06-10)


### Bug Fixes

* renovate incorrectly matching oci helm charts for helm datasources ([#141](https://github.com/defenseunicorns/uds-common/issues/141)) ([2761f2a](https://github.com/defenseunicorns/uds-common/commit/2761f2a5f69bae3967bb8a9ff6d392007f90a21b))


### Miscellaneous

* allow debug logs to continue through failure ([#146](https://github.com/defenseunicorns/uds-common/issues/146)) ([bec4fc3](https://github.com/defenseunicorns/uds-common/commit/bec4fc330d720673f645bda7e56006218ec96aad))
* **deps:** update uds common support dependencies to v0.22.1 ([#144](https://github.com/defenseunicorns/uds-common/issues/144)) ([d618bd2](https://github.com/defenseunicorns/uds-common/commit/d618bd2be3f75d62346594cb8d6d8c339b074f93))

## [0.4.5](https://github.com/defenseunicorns/uds-common/compare/v0.4.4...v0.4.5) (2024-05-30)


### Miscellaneous

* **deps:** update support-deps to v0.11.0 ([#137](https://github.com/defenseunicorns/uds-common/issues/137)) ([985dfd7](https://github.com/defenseunicorns/uds-common/commit/985dfd7f9d745d07daa528e7dfdc982c61b2da4b))

## [0.4.4](https://github.com/defenseunicorns/uds-common/compare/v0.4.3...v0.4.4) (2024-05-24)


### Miscellaneous

* pull debug / log actions from uds-core ([#135](https://github.com/defenseunicorns/uds-common/issues/135)) ([b3c9928](https://github.com/defenseunicorns/uds-common/commit/b3c99286e4200c98a61d86484030f2be5ebb5c70))

## [0.4.3](https://github.com/defenseunicorns/uds-common/compare/v0.4.2...v0.4.3) (2024-05-23)


### Bug Fixes

* update renovate config to use docker versioning for zarf images ([#128](https://github.com/defenseunicorns/uds-common/issues/128)) ([c18e125](https://github.com/defenseunicorns/uds-common/commit/c18e12507384328bb53b81c096bc9827f96ba114))


### Miscellaneous

* add an airgap note to UDS Package Practices (clarity is kindness) ([#126](https://github.com/defenseunicorns/uds-common/issues/126)) ([b70e1fe](https://github.com/defenseunicorns/uds-common/commit/b70e1fe165a521a33789298a7e69aa6a59d54968))
* adjust UDS package practice formatting ([#123](https://github.com/defenseunicorns/uds-common/issues/123)) ([f351d04](https://github.com/defenseunicorns/uds-common/commit/f351d04732a6e6e6fc2c62eff13f625a613effcc))
* **deps:** update uds common package dependencies to v6.6.3 ([#132](https://github.com/defenseunicorns/uds-common/issues/132)) ([0ebdd1f](https://github.com/defenseunicorns/uds-common/commit/0ebdd1f5f2aa32720c88347027215305573bc716))
* **deps:** update uds common support dependencies ([#125](https://github.com/defenseunicorns/uds-common/issues/125)) ([e014724](https://github.com/defenseunicorns/uds-common/commit/e01472454d2b3ef9665546fbb24c9980f090d238))
* **deps:** update uds common support dependencies to v0.22.0 ([#133](https://github.com/defenseunicorns/uds-common/issues/133)) ([2cf903d](https://github.com/defenseunicorns/uds-common/commit/2cf903d41d0dbfda1baaa9629d1fa3c5d1a88110))
* initial package practices ([#117](https://github.com/defenseunicorns/uds-common/issues/117)) ([d292b21](https://github.com/defenseunicorns/uds-common/commit/d292b216da73493743cd0a67b9763549c87c1819))
* update package practices with a bit more feedback ([#129](https://github.com/defenseunicorns/uds-common/issues/129)) ([af34fc9](https://github.com/defenseunicorns/uds-common/commit/af34fc90104c57d11a08678186b8b2aeaaac135d))

## [0.4.2](https://github.com/defenseunicorns/uds-common/compare/v0.4.1...v0.4.2) (2024-05-03)


### Miscellaneous

* give doug a mattermostid attribute and update uds version ([#120](https://github.com/defenseunicorns/uds-common/issues/120)) ([4a85172](https://github.com/defenseunicorns/uds-common/commit/4a851720a8ac7e62826efda9e92200ba3a5b6709))

## [0.4.1](https://github.com/defenseunicorns/uds-common/compare/v0.4.0...v0.4.1) (2024-05-01)


### Miscellaneous

* **deps:** update uds common support dependencies ([#116](https://github.com/defenseunicorns/uds-common/issues/116)) ([8aed1e0](https://github.com/defenseunicorns/uds-common/commit/8aed1e0ae8b4d65f7418664e8f2c73a16bf42801))

## [0.4.0](https://github.com/defenseunicorns/uds-common/compare/v0.3.11...v0.4.0) (2024-04-22)


### Features

* adds renovate to sh files ([#110](https://github.com/defenseunicorns/uds-common/issues/110)) ([b604d2e](https://github.com/defenseunicorns/uds-common/commit/b604d2e1b3fc69f29122f9a709c605f5ecf4da18))


### Miscellaneous

* add a default to setup to create an admin keycloak user ([#111](https://github.com/defenseunicorns/uds-common/issues/111)) ([7fe0dd4](https://github.com/defenseunicorns/uds-common/commit/7fe0dd49a9b7032f9c06a83c5a1c6adbb17e8d63))
* **deps:** update uds common support dependencies ([#106](https://github.com/defenseunicorns/uds-common/issues/106)) ([ab06724](https://github.com/defenseunicorns/uds-common/commit/ab067245249e63065d2c266fe3b1a45b155e9de2))
* fix the extract version template for env vars ([#115](https://github.com/defenseunicorns/uds-common/issues/115)) ([72d5d26](https://github.com/defenseunicorns/uds-common/commit/72d5d263ce850eac20728eb9330c7b3e26143a2b))

## [0.3.11](https://github.com/defenseunicorns/uds-common/compare/v0.3.10...v0.3.11) (2024-04-17)


### Miscellaneous

* add a default uds task to deploy podinfo ([#108](https://github.com/defenseunicorns/uds-common/issues/108)) ([c60e1ba](https://github.com/defenseunicorns/uds-common/commit/c60e1ba4888635ace4839e158b4dc476c11a8e7c))
* add a UDS package CR to make the package better for testing ([#102](https://github.com/defenseunicorns/uds-common/issues/102)) ([cf74934](https://github.com/defenseunicorns/uds-common/commit/cf749343a72db09f46cc054ff463454cdb8c4b74))
* **deps:** update uds common package dependencies to v6.6.2 ([#107](https://github.com/defenseunicorns/uds-common/issues/107)) ([b6a18b0](https://github.com/defenseunicorns/uds-common/commit/b6a18b039711998bb6d3c90db25a4f42f49c5eb3))
* pull the current bundle and package names when deploying ([#103](https://github.com/defenseunicorns/uds-common/issues/103)) ([4b27106](https://github.com/defenseunicorns/uds-common/commit/4b27106a55775b725be217818f4be8d711340e95))
* update codeowners ([#105](https://github.com/defenseunicorns/uds-common/issues/105)) ([2e23ae3](https://github.com/defenseunicorns/uds-common/commit/2e23ae3a9a70189ca7d9671f3454158bb71a7ed6))

## [0.3.10](https://github.com/defenseunicorns/uds-common/compare/v0.3.9...v0.3.10) (2024-04-03)


### Miscellaneous

* add a full uds task and inputs ([#95](https://github.com/defenseunicorns/uds-common/issues/95)) ([7e15fd2](https://github.com/defenseunicorns/uds-common/commit/7e15fd2ba4629ee1fae31e87f946ca32138df73c))
* add latest-bundle-release task ([#97](https://github.com/defenseunicorns/uds-common/issues/97)) ([2662f6a](https://github.com/defenseunicorns/uds-common/commit/2662f6a697a97b2a202a128040a487f2d2e117d7))
* attempt to fix renovate ([#98](https://github.com/defenseunicorns/uds-common/issues/98)) ([8155ecc](https://github.com/defenseunicorns/uds-common/commit/8155ecc62968e342110b0598a2d57de17b5e3914))
* **deps:** update uds common support dependencies ([#101](https://github.com/defenseunicorns/uds-common/issues/101)) ([dfdf927](https://github.com/defenseunicorns/uds-common/commit/dfdf927b2367a0592a54fa8a97d4ee84e118e2e0))
* fix renovate env var rule overmatching ([#99](https://github.com/defenseunicorns/uds-common/issues/99)) ([480497f](https://github.com/defenseunicorns/uds-common/commit/480497f4a72c3f25fcb87823c5902192d4e5befb))
* fix the renovate config github digest pinning ([#100](https://github.com/defenseunicorns/uds-common/issues/100)) ([4603448](https://github.com/defenseunicorns/uds-common/commit/4603448ce94c22c614ec7e87b9520e9681e618e2))

## [0.3.9](https://github.com/defenseunicorns/uds-common/compare/v0.3.8...v0.3.9) (2024-03-28)


### Miscellaneous

* fix missing keys in setup actions ([#93](https://github.com/defenseunicorns/uds-common/issues/93)) ([39d7395](https://github.com/defenseunicorns/uds-common/commit/39d73955ebb35f4e844a45fe23a7acf7d65d239a))

## [0.3.8](https://github.com/defenseunicorns/uds-common/compare/v0.3.7...v0.3.8) (2024-03-28)


### Miscellaneous

* add upgrade tests to common ([#91](https://github.com/defenseunicorns/uds-common/issues/91)) ([bb2e590](https://github.com/defenseunicorns/uds-common/commit/bb2e59021355172db2cfcca7dbf5a2434ce41b6d))
* **deps:** update dependency defenseunicorns/uds-cli to v0.10.1 ([#84](https://github.com/defenseunicorns/uds-common/issues/84)) ([6b455b7](https://github.com/defenseunicorns/uds-common/commit/6b455b7cef8ddab022c758a6309d8993f0a564b7))
* **deps:** update dependency defenseunicorns/uds-core to v0.17.0 ([#83](https://github.com/defenseunicorns/uds-common/issues/83)) ([b8d8181](https://github.com/defenseunicorns/uds-common/commit/b8d818165c7c676f56898c2d15ae14a2f7ff5f0c))
* **deps:** update uds common package dependencies to v6.6.1 ([#92](https://github.com/defenseunicorns/uds-common/issues/92)) ([862b635](https://github.com/defenseunicorns/uds-common/commit/862b63512b4b53ff963b85e25e8011818bb8e4e3))
* update registry login to happen in the common env setup action ([#88](https://github.com/defenseunicorns/uds-common/issues/88)) ([b7bce88](https://github.com/defenseunicorns/uds-common/commit/b7bce888d1d62c5d382d7d88a54e59da72e0d3ae))

## [0.3.7](https://github.com/defenseunicorns/uds-common/compare/v0.3.6...v0.3.7) (2024-03-26)


### Miscellaneous

* remove schedule on renovate ([#85](https://github.com/defenseunicorns/uds-common/issues/85)) ([fda7e57](https://github.com/defenseunicorns/uds-common/commit/fda7e57ad878cc70bf3905948911daa84c67db27))
* update k3d-core-istio-dev to k3d-core-slim-dev ([#86](https://github.com/defenseunicorns/uds-common/issues/86)) ([aa0e6da](https://github.com/defenseunicorns/uds-common/commit/aa0e6dad40126ead465b102ea28a3ac961883493))

## [0.3.6](https://github.com/defenseunicorns/uds-common/compare/v0.3.5...v0.3.6) (2024-03-25)


### Miscellaneous

* hotfix the spoof containing a dash in the input and add a publish step ([#81](https://github.com/defenseunicorns/uds-common/issues/81)) ([f9c7aac](https://github.com/defenseunicorns/uds-common/commit/f9c7aac4a30e5c3e627c44946f2f212af1573b39))

## [0.3.5](https://github.com/defenseunicorns/uds-common/compare/v0.3.4...v0.3.5) (2024-03-22)


### Miscellaneous

* fix spoof to not include a dash ([#79](https://github.com/defenseunicorns/uds-common/issues/79)) ([5d1738b](https://github.com/defenseunicorns/uds-common/commit/5d1738ba0ca2cd19c7fdf6dfe6873339e129c3bb))

## [0.3.4](https://github.com/defenseunicorns/uds-common/compare/v0.3.3...v0.3.4) (2024-03-22)


### Miscellaneous

* add the ability to spoof to common ([#77](https://github.com/defenseunicorns/uds-common/issues/77)) ([49634e1](https://github.com/defenseunicorns/uds-common/commit/49634e1b69c6b2eadcc2497f6baba8bd349f3d38))
* **deps:** update dependency defenseunicorns/uds-core to v0.16.1 ([#72](https://github.com/defenseunicorns/uds-common/issues/72)) ([32d1ad6](https://github.com/defenseunicorns/uds-common/commit/32d1ad6812a3ef6ad750447296f5644b14ff2855))

## [0.3.3](https://github.com/defenseunicorns/uds-common/compare/v0.3.2...v0.3.3) (2024-03-20)


### Miscellaneous

* add an explicit architecture input ([#75](https://github.com/defenseunicorns/uds-common/issues/75)) ([15825d4](https://github.com/defenseunicorns/uds-common/commit/15825d44bbb53b90a22ff41eced5050d84ffa251))

## [0.3.2](https://github.com/defenseunicorns/uds-common/compare/v0.3.1...v0.3.2) (2024-03-19)


### Miscellaneous

* add a publish job for dev bundles ([#73](https://github.com/defenseunicorns/uds-common/issues/73)) ([37b0d08](https://github.com/defenseunicorns/uds-common/commit/37b0d08f2c67b13ae58741a52dabaabab90396ce))

## [0.3.1](https://github.com/defenseunicorns/uds-common/compare/v0.3.0...v0.3.1) (2024-03-18)


### ⚠ BREAKING CHANGES

* improve how tests are called ([#71](https://github.com/defenseunicorns/uds-common/issues/71))

### Bug Fixes

* fix UDS path ([#67](https://github.com/defenseunicorns/uds-common/issues/67)) ([259136d](https://github.com/defenseunicorns/uds-common/commit/259136d43b961d3f2e7c608d74d45d6f708c75fd))


### Miscellaneous

* add a pull task to get the latest package release ([#70](https://github.com/defenseunicorns/uds-common/issues/70)) ([e534793](https://github.com/defenseunicorns/uds-common/commit/e5347932c20cffe103bf015c2762b345a2ea30bb))
* **deps:** update dependency defenseunicorns/uds-core to v0.15.1 ([#66](https://github.com/defenseunicorns/uds-common/issues/66)) ([3ab4e04](https://github.com/defenseunicorns/uds-common/commit/3ab4e04ad219db0beae73c5b0f35fda147217382))
* improve how tests are called ([#71](https://github.com/defenseunicorns/uds-common/issues/71)) ([043b297](https://github.com/defenseunicorns/uds-common/commit/043b297012f926e571a657d7a2abbe8c7413144d))

## [0.3.0](https://github.com/defenseunicorns/uds-common/compare/v0.2.2...v0.3.0) (2024-03-13)


### Features

* update uds-core to 14.5 ([a7d9b06](https://github.com/defenseunicorns/uds-common/commit/a7d9b06bcbe1e1e24fd40148e89ab62672f9178b))


### Miscellaneous

* hotfix the renovate config to properly pickup git chart versions and registry 1 images ([3f7d5ec](https://github.com/defenseunicorns/uds-common/commit/3f7d5ec09597764fadb794b604f509f34079d511))

## [0.2.2](https://github.com/defenseunicorns/uds-common/compare/v0.2.1...v0.2.2) (2024-03-07)


### Miscellaneous

* **deps:** update dependency defenseunicorns/uds-cli to v0.9.3 ([e9757e8](https://github.com/defenseunicorns/uds-common/commit/e9757e87ac98f9a76983c2ff7e92aa57f0ca14cc))
* **deps:** update dependency defenseunicorns/uds-core to v0.14.3 ([e3461fb](https://github.com/defenseunicorns/uds-common/commit/e3461fb8da51f98e86774fe9a3d742a8dc1d97cf))
* **deps:** update githubactions ([9f357db](https://github.com/defenseunicorns/uds-common/commit/9f357db418ae5c14fd9a58db1bf379aa60503b26))

## [0.2.1](https://github.com/defenseunicorns/uds-common/compare/v0.2.0...v0.2.1) (2024-02-27)


### Bug Fixes

* add input for log artifact suffix ([19748e6](https://github.com/defenseunicorns/uds-common/commit/19748e6adf9bfa9ed97f7c4336d008b7a50ae433))
* fix accidental deletion ([b427e2e](https://github.com/defenseunicorns/uds-common/commit/b427e2effa85bab87edf697fb4ab5eb35221f3d2))
* refs after rename from uds-common-tasks to uds-common ([2c61a05](https://github.com/defenseunicorns/uds-common/commit/2c61a0507436633cba18a79612ea59d09657f8c0))
* use workflow env for pr.title ([cd2955a](https://github.com/defenseunicorns/uds-common/commit/cd2955af0ee88339e921dcdb9d0c8edea4d48b99))


### Miscellaneous

* add a regex to capture npm install commands ([352f04c](https://github.com/defenseunicorns/uds-common/commit/352f04c049aaac9677ede013dbd06a7f21196968))
* add common workflows for reuse across repos ([4b5c84b](https://github.com/defenseunicorns/uds-common/commit/4b5c84bbf84309250e3023c53c8cf77e25eef767))
* add ie ([0bc781e](https://github.com/defenseunicorns/uds-common/commit/0bc781e7a9a972bb1853aeb657919ca86062c83f))
* create common renovate config ([77f1320](https://github.com/defenseunicorns/uds-common/commit/77f1320f827091c67c4b5eedb5a08e8ad9e2bacd))
* **deps:** update dependency defenseunicorns/uds-cli to v0.9.0 ([77eb22e](https://github.com/defenseunicorns/uds-common/commit/77eb22eabf2b31c529a759662e9fe93399fa4361))
* **deps:** update dependency defenseunicorns/uds-cli to v0.9.2 ([ce3ba97](https://github.com/defenseunicorns/uds-common/commit/ce3ba974ef3ff88058809f4b9a78da281a65ffa0))
* introduce a fix for release-please not firing on PR workflows ([f8562cd](https://github.com/defenseunicorns/uds-common/commit/f8562cdd89c260bd56f650badeb7c12b8b0dadcb))
* remove reviewers from renovate ([ffa675b](https://github.com/defenseunicorns/uds-common/commit/ffa675b67c4d863de43def10ccc1f538326da42b))
* update @ renovate rule to be more brewey ([fc967d3](https://github.com/defenseunicorns/uds-common/commit/fc967d3e860c41fcfa652814d2d98b874a4cc8f9))
* update @ renovate rule to be more brewey ([f6c0d3a](https://github.com/defenseunicorns/uds-common/commit/f6c0d3a78ca3ce173ace364f7cbcce5856c7057a))
* update to actionable tasks ([01a4736](https://github.com/defenseunicorns/uds-common/commit/01a4736f5f859ebfcb72efea6fb254fd7793e4be))

## [0.2.0](https://github.com/defenseunicorns/uds-common-tasks/compare/v0.1.4...v0.2.0) (2024-02-12)


### Features

* add registry-login task ([44e28c4](https://github.com/defenseunicorns/uds-common-tasks/commit/44e28c42a0fd4c036bc3c3eb371558162563a33e))


### Bug Fixes

* address issue with registry-login task ([ece666d](https://github.com/defenseunicorns/uds-common-tasks/commit/ece666dc703e2cfbd6be1cfb5dc572d5d7ee0ddf))
* incorporating PR feedback ([db21d69](https://github.com/defenseunicorns/uds-common-tasks/commit/db21d6918bf47c9f3f68cf3e1d442481a3aabda9))


### Miscellaneous

* **deps:** update dependency defenseunicorns/uds-cli to v0.8.1 ([e82fbee](https://github.com/defenseunicorns/uds-common-tasks/commit/e82fbee39bf137abd5015831c062e45eb4ba48ac))
* **deps:** update dependency defenseunicorns/uds-core to v0.12.0 ([f003bd7](https://github.com/defenseunicorns/uds-common-tasks/commit/f003bd7150b44af5459513c57332cd1cba06f209))
* **deps:** update githubactions to v4.3.1 ([57a6919](https://github.com/defenseunicorns/uds-common-tasks/commit/57a6919c207baed4b2e2d73f415cdee84bd88f45))
* switch to uds zarf ([d1fcde7](https://github.com/defenseunicorns/uds-common-tasks/commit/d1fcde70ed8dc19cdb64fc3e4afcfbf6b84ddca4))

## [0.1.4](https://github.com/defenseunicorns/uds-common-tasks/compare/v0.1.3...v0.1.4) (2024-02-01)


### Bug Fixes

* renovate for uds core ([a479694](https://github.com/defenseunicorns/uds-common-tasks/commit/a479694aac81ebfac0ff3dbe045ef70a18046587))


### Miscellaneous

* **deps:** update dependency defenseunicorns/uds-core to v0.10.0 ([1b45688](https://github.com/defenseunicorns/uds-common-tasks/commit/1b45688eeb3f0e1797550ce615d361aa282fa7f8))

## [0.1.3](https://github.com/defenseunicorns/uds-common-tasks/compare/v0.1.2...v0.1.3) (2024-02-01)


### Miscellaneous

* **deps:** update dependency defenseunicorns/uds-core to v0.10.0 ([f70d939](https://github.com/defenseunicorns/uds-common-tasks/commit/f70d939c2f749616b67212dc84cf8355c01df6fa))

## [0.1.2](https://github.com/defenseunicorns/uds-common-tasks/compare/v0.1.1...v0.1.2) (2024-01-30)


### Bug Fixes

* prevent publish vars from being blown away ([#15](https://github.com/defenseunicorns/uds-common-tasks/issues/15)) ([3ec6d5e](https://github.com/defenseunicorns/uds-common-tasks/commit/3ec6d5e7656e89d861b95dd37b87c160547f9849))


### Miscellaneous

* **deps:** update dependency defenseunicorns/uds-cli to v0.7.0 ([9a8beb2](https://github.com/defenseunicorns/uds-common-tasks/commit/9a8beb277939ccf3fa1a01f4aedf7d9ce0c415d2))

## [0.1.1](https://github.com/defenseunicorns/uds-common-tasks/compare/v0.1.0...v0.1.1) (2024-01-25)


### Bug Fixes

* update renovate config to catch zarf action ([f5dac3d](https://github.com/defenseunicorns/uds-common-tasks/commit/f5dac3d1feea70a56c56584c8d3aa0bda890026a))
* vars on create ([93928e4](https://github.com/defenseunicorns/uds-common-tasks/commit/93928e40ae05fcf45c1919c46c7805a92209a66e))
* version template for zarf action ([9ae973d](https://github.com/defenseunicorns/uds-common-tasks/commit/9ae973d75ed741643aa917a7cb4303ac83b35966))


### Miscellaneous

* **deps:** update dependency defenseunicorns/zarf to v0.32.2 ([22295b9](https://github.com/defenseunicorns/uds-common-tasks/commit/22295b950e3f07c5aa3f350695ac6bf84a36da86))

## 0.1.0 (2024-01-24)


### Features

* initialize repo with tasks ([eae20f3](https://github.com/defenseunicorns/uds-common-tasks/commit/eae20f3e9780a60ef6a2d1f8492b858c508763f1))

### Miscellaneous

* **deps:** update githubactions ([afd1d92](https://github.com/defenseunicorns/uds-common-tasks/commit/afd1d927bc43f3f523017f0c9abc4377aea287a9))
