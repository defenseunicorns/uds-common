#!/usr/bin/env bash
# Copyright 2026 Defense Unicorns
# SPDX-License-Identifier: AGPL-3.0-or-later OR LicenseRef-Defense-Unicorns-Commercial

set -euo pipefail

repo=$(cd "$(dirname "$0")/.." && pwd)
test_dir=$(mktemp -d)
trap 'rm -rf "$test_dir"' EXIT
cp "$repo/tasks/lint.yaml" "$test_dir/tasks.yaml"
cd "$test_dir"

validate() {
  uds run -f tasks.yaml renovate --no-progress "$@"
}

expect_failure() {
  if validate "$@"; then
    echo "Expected validation to fail: $*" >&2
    exit 1
  fi
}

# Default file and custom JSON5 path (including spaces).
printf '%s\n' '{"extends": ["config:recommended"]}' > renovate.json
validate
printf '%s\n' '// Custom preset' '{"enabled": true}' > 'custom config.json5'
validate --with 'file=custom config.json5'

# Semantic errors must fail for both the default and custom files.
printf '%s\n' '{"invalidRenovateOption": true}' > renovate.json
expect_failure
printf '%s\n' '{"enabled": "not-a-boolean"}' > 'custom config.json5'
expect_failure --with 'file=custom config.json5'

# An explicit filename must not permit self-hosted-only options.
printf '%s\n' '{"repositories": ["example/repo"]}' > 'custom config.json5'
expect_failure --with 'file=custom config.json5'

# Malformed and missing configurations must fail rather than silently skip.
printf '%s\n' '{' > 'custom config.json5'
expect_failure --with 'file=custom config.json5'
expect_failure --with file=missing.json

echo "Renovate validation tests passed."
