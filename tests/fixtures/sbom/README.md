# SBOM integration fixture

Run from the repository root:

```sh
bash tests/sbom.sh
```

Requires UDS CLI 0.38.0, Docker with a running daemon and Buildx, and jq.
Like `tests/renovate.sh`, the test is a Bash script that runs real UDS tasks in
temporary workspaces. The independent `sbom` job in the `Common-Specific Checks`
PR workflow installs UDS on an Ubuntu runner. No cluster,
registry credentials, or release tooling is required. Docker may download its
BuildKit image and Dockerfile frontend; the nginx case pulls the public upstream
image declared in the repository.

All package definitions, image archives, package artifacts, and extracted SBOMs
are created in temporary workspaces and removed on exit. The repository's root
package definition and releaser configuration are never modified.

The scratch, scan-only image is built by the real `tasks/create.yaml` task, not a
mock. Both fixture image tags deliberately start at `dev`, while `releaser.yaml`
provides different product versions for each flavor. The alternate version has
an upstream prerelease suffix to verify that only the trailing `-uds.NUMBER` is
removed.

Coverage:

- Package creation and SBOM scanning for both fixture flavors.
- Non-default definition paths, with root metadata/version decoys.
- Rewriting only the active flavor's matching image archive tag.
- Extracting packaged SBOMs with `uds zarf package inspect sbom` and checking
  Syft `artifacts[].version`, exact `cpes` membership, and the shim PURL together.
- Rejecting missing and duplicate active flavors in `releaser.yaml` before an
  image archive or package is produced.
- Packaging the actual root nginx definition for the public upstream flavor,
  using its current releaser version and retaining SBOM generation.

`uds-pk release update-yaml` is not part of this test: it exercises package
creation directly from releaser versions, without requiring release tooling.
