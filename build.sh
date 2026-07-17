#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="${IMAGE_NAME:-nxly/vllm-pterodactyl}"
IMAGE_TAG="${IMAGE_TAG:-26.05}"

docker build       --pull       --tag "${IMAGE_NAME}:${IMAGE_TAG}"       .

echo
echo "Built: ${IMAGE_NAME}:${IMAGE_TAG}"
docker image inspect "${IMAGE_NAME}:${IMAGE_TAG}"       --format 'Architecture={{.Architecture}} Entrypoint={{json .Config.Entrypoint}} Cmd={{json .Config.Cmd}}'
