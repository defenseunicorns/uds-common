#!/usr/bin/env bash
# Copyright 2026 Defense Unicorns
# SPDX-License-Identifier: AGPL-3.0-or-later OR LicenseRef-Defense-Unicorns-Commercial

set -euo pipefail

repo=$(cd "$(dirname "$0")/.." && pwd)
for tool in uds docker jq; do
  if ! command -v "$tool" >/dev/null 2>&1; then
    echo "SBOM integration tests require $tool on PATH." >&2
    exit 1
  fi
done
docker info >/dev/null
docker buildx version

test_dir=$(mktemp -d)
trap 'rm -rf "$test_dir"' EXIT

fail() {
  echo "$*" >&2
  exit 1
}

prepare_workspace() {
  local workspace=$1
  mkdir -p "$workspace/tasks"
  cp "$repo/tasks/create.yaml" "$workspace/tasks/create.yaml"
  # Shared tasks use the local Zarf binary; route it through the installed UDS CLI.
  printf '%s\n' '#!/usr/bin/env bash' 'exec uds zarf "$@"' > "$workspace/zarf"
  chmod +x "$workspace/zarf"
}

prepare_fixture() {
  local workspace=$1
  prepare_workspace "$workspace"
  mkdir -p "$workspace/definition"
  cp "$repo/tests/fixtures/sbom/"*.yaml "$workspace/definition/"
  # Decoys ensure --with path=definition cannot silently read root metadata or versions.
  cp "$repo/zarf.yaml" "$repo/releaser.yaml" "$workspace/"
}

create_package() {
  local workspace=$1 flavor=$2 definition=$3 cpe=$4
  (
    cd "$workspace"
    uds run -f tasks/create.yaml package --no-progress \
      --set "FLAVOR=$flavor" \
      --with "path=$definition" \
      --with architecture=amd64 \
      --with "cpe=$cpe"
  )
}

assert_archive_tag() {
  local definition=$1 flavor=$2 slug=$3 version=$4 actual
  export TEST_FLAVOR="$flavor" TEST_REPOSITORY="zarf.internal/sbom/$slug"
  actual=$(uds zarf tools yq -r '
    .components[]
    | select((.only.flavor // strenv(TEST_FLAVOR)) == strenv(TEST_FLAVOR))
    | .imageArchives[]?
    | .images[]?
    | select(split(":")[0] == strenv(TEST_REPOSITORY))
  ' "$definition/zarf.yaml")
  [[ "$actual" == "zarf.internal/sbom/$slug:$version" ]] \
    || fail "Expected exactly one rewritten $slug:$version archive tag for $flavor, got: $actual"
}

inspect_package() {
  local workspace=$1 slug=$2 version=$3 cpe=$4
  local packages=() package
  while IFS= read -r package; do
    packages+=("$package")
  done < <(find "$workspace" -type f -name 'zarf-package-*.tar.zst')
  [[ ${#packages[@]} == 1 ]] \
    || fail "Expected one packaged artifact in $workspace, found ${#packages[@]}"
  uds zarf package inspect sbom "${packages[0]}" \
    --output "$workspace/inspected-sbom" --features values=true
  local sboms=() sbom
  while IFS= read -r sbom; do
    sboms+=("$sbom")
  done < <(find "$workspace/inspected-sbom" -type f -name '*.json')
  [[ ${#sboms[@]} -gt 0 ]] || fail "No packaged SBOMs found for $slug"
  if ! jq -e -s --arg version "$version" --arg cpe "$cpe" \
    --arg purl "pkg:bitnami-uds/$slug@$version-0" '
      [.[] | .artifacts[]? | select(.purl == $purl)]
      | length > 0 and all(.[];
          .version == $version
          and any(.cpes[]?; (if type == "object" then .cpe else . end) == $cpe)
        )
    ' "${sboms[@]}"; then
    echo "Expected version=$version cpe=$cpe purl=pkg:bitnami-uds/$slug@$version-0" >&2
    jq -s '[.[] | .artifacts[]? | {name, version, purl, cpes, foundBy}]' "${sboms[@]}" >&2
    fail "Packaged SBOM is missing the expected version, CPE, or PURL for $slug"
  fi
  echo "Verified $slug $version: $cpe"
}

fixture_cpe='cpe:2.3:a:uds:sbom-fixture:*:*:*:*:*:*:*:*'
for flavor in upstream alternate; do
  workspace="$test_dir/fixture-$flavor"
  prepare_fixture "$workspace"
  case "$flavor" in
    upstream) version=1.2.3; inactive=alternate ;;
    alternate) version=2.4.0-rc.1; inactive=upstream ;;
  esac
  create_package "$workspace" "$flavor" definition "$fixture_cpe"
  assert_archive_tag "$workspace/definition" "$flavor" sbom-fixture "$version"
  assert_archive_tag "$workspace/definition" "$inactive" sbom-fixture dev
  [[ -s "$workspace/definition/tmp/sbom-$flavor.tar" ]] \
    || fail "Missing OCI image archive relative to the requested definition path"
  inspect_package "$workspace" sbom-fixture "$version" "${fixture_cpe/\*/$version}"
done

# Invalid releaser flavor selection must fail before building or packaging an image.
for scenario in missing duplicate; do
  workspace="$test_dir/$scenario-flavor"
  prepare_fixture "$workspace"
  case "$scenario" in
    missing)
      uds zarf tools yq -i '.flavors |= [.[] | select(.name != "upstream")]' \
        "$workspace/definition/releaser.yaml"
      ;;
    duplicate)
      uds zarf tools yq -i '.flavors += [.flavors[0]]' \
        "$workspace/definition/releaser.yaml"
      ;;
  esac
  if create_package "$workspace" upstream definition "$fixture_cpe" > "$workspace/failure.log" 2>&1; then
    cat "$workspace/failure.log"
    fail "Expected $scenario releaser flavor to fail"
  fi
  cat "$workspace/failure.log"
  [[ ! -e "$workspace/definition/tmp/sbom-upstream.tar" ]] \
    || fail "$scenario flavor was rejected only after building the shim"
  [[ -z "$(find "$workspace" -type f -name 'zarf-package-*.tar.zst')" ]] \
    || fail "$scenario flavor unexpectedly produced a package"
done

# Exercise the actual nginx definition, charts, images, and upstream releaser version.
# Only upstream is public: registry1 and unicorn would require credentials.
workspace="$test_dir/nginx"
prepare_workspace "$workspace"
cp "$repo/zarf.yaml" "$repo/releaser.yaml" "$repo/zarf-values.yaml" \
  "$repo/zarf-values.schema.json" "$workspace/"
cp -R "$repo/common" "$repo/chart" "$repo/src" "$repo/values" "$workspace/"
release_version=$(uds zarf tools yq -r '.flavors[] | select(.name == "upstream") | .version' \
  "$workspace/releaser.yaml")
[[ "$release_version" =~ ^(.+)-uds\.[0-9]+$ ]] \
  || fail "Expected one upstream release version ending in -uds.NUMBER, got: $release_version"
version=${BASH_REMATCH[1]}
nginx_cpe='cpe:2.3:a:f5:nginx:*:*:*:*:*:*:*:*'
create_package "$workspace" upstream . "$nginx_cpe"
assert_archive_tag "$workspace" upstream nginx "$version"
inspect_package "$workspace" nginx "$version" "${nginx_cpe/\*/$version}"

echo "SBOM integration tests passed."
