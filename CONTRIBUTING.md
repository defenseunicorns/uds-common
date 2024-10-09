# Welcome to UDS Common

Thank you for your interest in contributing to the common framework Defense Unicorns 🦄 uses across UDS!

Below are the process and requirements for contributing.

## Developer Experience

Continuous Delivery is core to our development philosophy. Check out [https://minimumcd.org](https://minimumcd.org) for a good baseline agreement on what that means.

Specifically:

* We do trunk-based development (main) with short-lived feature branches that originate from the trunk, get merged into the trunk, and are deleted after the merge
* We don't merge code into main that isn't releasable
* We perform automated testing on all changes before they get merged to main
* Continuous integration (CI) pipeline tests are definitive
* We create immutable release artifacts

### Philosophy

Before contributing or suggesting a larger change it is important to keep in mind that the "Best way to avoid punch. No be there." ―Miyagi to Daniel in Karate Kid.  This means that the best way to update a task or a configuration is to require no downstream changes at all and to suggest changes in architecture that will lead to fewer and fewer downstream changes over all.  When proposing architectural changes in [ADRs](#architecture-decision-records-adr) you should clearly outline (and test!) the consequences of changes to downstream consumers.

### Developer Workflow

:key: == Required by automation

1. Drop a comment in any issue to let everyone know you're working on it and submit a Draft PR (step 4) as soon as you are able.
2. :key: Set up your Git config to GPG sign all commits. [Here's some documentation on how to set it up](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits). You won't be able to merge your PR if you have any unverified commits.
3. Create a Draft Pull Request as soon as you can, even if it is just 5 minutes after you started working on it. We lean towards working in the open as much as we can.
   > ⚠️ **NOTE:** _:key: We use [Conventional Commit messages](https://www.conventionalcommits.org/) in PR titles so, if you can, use one of `fix:`, `feat:`, `chore:`, `docs:` or similar.  If you need help, just use with `wip:` and we'll help with the rest_
4. :key: Automated tests will begin based on the paths you have edited in your Pull Request.
   > ⚠️ **NOTE:** _If you are an external third-party contributor, the pipelines won't run until a [CODEOWNER](./CODEOWNERS) approves the pipeline run._
5. :key: Be sure to heed the `needs-adr`,`needs-docs`,`needs-tests` labels as appropriate for the PR. Once you have addressed all of the needs, remove the label or request a maintainer to remove it.
6. Once the review is complete and approved, a core member of the project will merge your PR. If you are an external third-party contributor, two core members of the project will be required to approve the PR.
7. Close the issue if it is fully resolved by your PR. _Hint: You can add "Fixes #XX" to the PR description to automatically close an issue when the PR is merged._

### Architecture Decision Records (ADR)

We've chosen to use ADRs to document architecturally significant decisions. We primarily use the guidance found in [this article by Michael Nygard](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions) with a couple of tweaks:

- An ADR is needed whenever there is an architectural/structural change to the repository that will incur downstream impacts to other repositories.
- We will use the tool [adr-tools](https://github.com/npryce/adr-tools) to make it easier on us to create and maintain ADRs.
- We will keep ADRs specific to this package in the repository under `adr/NNNN-name-of-adr.md`.
  > `adr-tools` is configured with a dotfile to automatically use this directory and format.
- We will keep ADRs relating to specific teams in their repositories (i.e. the [UDS Software Factory](https://github.com/defenseunicorns/uds-software-factory) repository).
