#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="${IMAGE_NAME:-nxly/vllm-pterodactyl}"
IMAGE_TAG="${IMAGE_TAG:-26.05}"

docker push "${IMAGE_NAME}:${IMAGE_TAG}"
