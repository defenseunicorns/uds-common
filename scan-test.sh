#!/bin/bash

COMBINED_JSON="[]"

TAG="18.0.2-uds.0-upstream"
IMAGE="ghcr.io/defenseunicorns/packages/uds/gitlab"

manifestDigest=$(crane manifest "${IMAGE}:${TAG}" | jq -r '.manifests[0].digest')

tarDigest=$(crane manifest "${IMAGE}@${manifestDigest}" | jq -r '.layers[] | select(.annotations["org.opencontainers.image.title"] == "sboms.tar") | .digest')

sbomList=$(crane blob "${IMAGE}@${tarDigest}" | tar -tv | grep json | awk '{print $6}')

echo "sbomList: ${sbomList}"

for sbom in $sbomList; do
  COMBINED_JSON=$(echo "${COMBINED_JSON}" | jq -c --arg imageDigest "${IMAGE}@${tarDigest}" --arg sbomName "${sbom}" '. + [{imageDigest: $imageDigest, sbomName: $sbomName}]')
done

COMBINED_JSON=$(echo "${COMBINED_JSON}" | jq -c 'unique_by(.sbomName)')

echo "COMBINED_JSON: ${COMBINED_JSON}"