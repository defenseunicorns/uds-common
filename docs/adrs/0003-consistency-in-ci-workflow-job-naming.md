# 2. Apache License, Version 2.0 (Apache-2.0) for All UDS Products

Date: 2024-10-04

## Status

Accepted

## Context

GitHub CI workflows and job names have somewhat complex interactions between 
understandability on a Pull Request and with Branch Protection Rules for a
repository.

Because of the downstream impacts these names can have to UDS Package repos
we need a simple scheme to follow  for common workflows and jobs that will
minimize the need to change repo settings for consuming repos.

Parent workflow names (the `name` key at the top of a GitHub workflow) do not
affect Branch Protection Rules, whereas job names and matrices are included
in these rules.

## Decision

Workflow names should be simple but can be whatever the downstream team would
like them to be to carry context for that action - these names are localized to 
their respective repositories so do not impact other teams.

Job names though should be controlled to maintain consistency for branch protection.
For calling (parent) workflows and callable (common) workflows these should be named:

- Callable Workflow jobs (in `uds-common`) should be named `run`
- Calling Workflow jobs (in `uds-package-*`) should be named `validate`

This will ensure that there is a minimum of permutations that need to be included for
a given repository and that more scans/tests/checks can be added over time.  For a
given repo the Branch Protection Rules could look something like:

- validate / run
- validate (install, upstream) / run
- validate (upgrade, upstream) / run
- validate (install, unicorn) / run
- validate (upgrade, unicorn) / run
- validate (install, registry1) / run
- validate (upgrade, registry1) / run

With the Pull Request jobs looking something like:

- Lint / validate / run
- PR Title Check / validate / run
- Test / validate (install, upstream) / run
- Test / validate (upgrade, upstream) / run
- Test / validate (install, unicorn) / run
- Test / validate (upgrade, unicorn) / run
- Test / validate (install, registry1) / run
- Test / validate (upgrade, registry1) / run
- CI Docs Shim / validate (install, upstream) / run
- CI Docs Shim / validate (upgrade, upstream) / run
- CI Docs Shim / validate (install, unicorn) / run
- CI Docs Shim / validate (upgrade, unicorn) / run
- CI Docs Shim / validate (install, registry1) / run
- CI Docs Shim / validate (upgrade, registry1) / run

## Consequences

Sticking to `validate / run` could make things more ambiguous - especially if calling
workflow names do not properly carry context and this naming scheme does not take into
account any potential matrix changes which are also included in Branch Protection Rules.

Likely though this should still provide flexibility for teams to add context if they need
to and matrix changes are less likely and have only been observed a few times in the past.
Any additional jobs should be able to follow either the standard `validate / run` flow or
the existing matrix flow for the repository.
