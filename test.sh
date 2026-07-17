#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="${IMAGE_NAME:-nxly/vllm-pterodactyl}"
IMAGE_TAG="${IMAGE_TAG:-26.05}"

docker run --rm       --gpus all       "${IMAGE_NAME}:${IMAGE_TAG}"       bash -lc '
    echo "Architecture: $(uname -m)"
    echo "User: $(id)"
    python3 -c "import vllm; print(\"vLLM:\", vllm.__version__)"
    nvidia-smi
  '
