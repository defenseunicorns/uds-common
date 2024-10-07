# Changelog

## [1.0.0](https://github.com/defenseunicorns/uds-common/compare/v0.13.1...v1.0.0) (2024-10-07)


### ⚠ BREAKING CHANGES

* update the publish task to avoid name collision ([#267](https://github.com/defenseunicorns/uds-common/issues/267))
* **task:** add optional config input to create, deploy package and bundle tasks ([#262](https://github.com/defenseunicorns/uds-common/issues/262))
* add shell linting to uds-common linting ([#258](https://github.com/defenseunicorns/uds-common/issues/258))
* update uds common gh actions to use uds run conditionals ([#254](https://github.com/defenseunicorns/uds-common/issues/254))

### Features

* **task:** add optional config input to create, deploy package and bundle tasks ([#262](https://github.com/defenseunicorns/uds-common/issues/262)) ([3d3e9cb](https://github.com/defenseunicorns/uds-common/commit/3d3e9cb82e6664a4250782e6ae3a4e1112cfe5be))
* update uds common gh actions to use uds run conditionals ([#254](https://github.com/defenseunicorns/uds-common/issues/254)) ([c9d92f0](https://github.com/defenseunicorns/uds-common/commit/c9d92f0481d147e362d359447b487ab1c1560f31))


### Bug Fixes

* update publish permissions ([#263](https://github.com/defenseunicorns/uds-common/issues/263)) ([2e57869](https://github.com/defenseunicorns/uds-common/commit/2e57869b41d1f523ca37b2a3da035a580fc7d6d0))
* update the publish task to avoid name collision ([#267](https://github.com/defenseunicorns/uds-common/issues/267)) ([6a176ff](https://github.com/defenseunicorns/uds-common/commit/6a176ffd18ece28b759eb4e20f2e082ff0e079fb))
* update publish to take architecture as an input ([#143](https://github.com/defenseunicorns/uds-common/issues/143))

### Miscellaneous

* add an ADR to document workflow/job names ([#260](https://github.com/defenseunicorns/uds-common/issues/260)) ([0685c7c](https://github.com/defenseunicorns/uds-common/commit/0685c7cac904ebe5f746770f9488210498d4463d))
* add shell linting to uds-common linting ([#258](https://github.com/defenseunicorns/uds-common/issues/258)) ([82e9137](https://github.com/defenseunicorns/uds-common/commit/82e9137642cb5dc0ba41cb33ad1ae44258549d19))
* correct the release workflow path on README ([#265](https://github.com/defenseunicorns/uds-common/issues/265)) ([62c9a5f](https://github.com/defenseunicorns/uds-common/commit/62c9a5f0a14a8215d5d7e55e1b11d0d77003c8e1))
* **deps:** update uds common support dependencies ([#250](https://github.com/defenseunicorns/uds-common/issues/250)) ([c828932](https://github.com/defenseunicorns/uds-common/commit/c82893264fffadfd0d84ca239a9459e6e55b9635))
* **docs:** restructure and introduce metadata guidelines ([#266](https://github.com/defenseunicorns/uds-common/issues/266)) ([6828f10](https://github.com/defenseunicorns/uds-common/commit/6828f10932a65d5fbbaf5994e2c23ddd1cd27255))
* refactor and improve badge verification task ([#249](https://github.com/defenseunicorns/uds-common/issues/249)) ([82e63be](https://github.com/defenseunicorns/uds-common/commit/82e63be82766a2e550a847af904b2d738c9d3478))
* update practices around maintaining the UDS Common framework ([#253](https://github.com/defenseunicorns/uds-common/issues/253)) ([a733122](https://github.com/defenseunicorns/uds-common/commit/a7331224f153532361d32d0b02de6cbe7361ffe3))
* update the codeowners for the repo ([#264](https://github.com/defenseunicorns/uds-common/issues/264)) ([6359020](https://github.com/defenseunicorns/uds-common/commit/6359020fa85b88f3360d0813f3da1d5e1f51134c))

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
