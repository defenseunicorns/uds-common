# Copyright 2026 Defense Unicorns
# SPDX-License-Identifier: AGPL-3.0-or-later OR LicenseRef-Defense-Unicorns-Commercial

uds {
  bundle_api_version = "uds.dev/v1alpha1"
}

metadata {
  name        = "test"
  description = "The testing UDS bundle"
  version     = "dev"
}

package "nginx" {
  source       = "../zarf-package-nginx-${sys.arch}-dev.tar.zst"
  values_files = ["values/nginx.yaml"]

  signature_verification {
    verify = false
  }
}
