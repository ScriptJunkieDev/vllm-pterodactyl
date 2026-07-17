# NXLY vLLM Pterodactyl Image

Thin wrapper around NVIDIA's GX10/DGX Spark vLLM image.

It preserves the NVIDIA vLLM environment but clears the inherited container
entrypoint so Pterodactyl/Wings can execute the egg startup command directly.

## Build on the GX10

```bash
chmod +x build.sh test.sh push.sh
./build.sh
./test.sh
```

The resulting local image is:

```text
nxly/vllm-pterodactyl:26.05
```

## Pterodactyl egg runtime image

Replace:

```text
nvcr.io/nvidia/vllm:26.05.post1-py3
```

with:

```text
nxly/vllm-pterodactyl:26.05
```

The egg startup command can then run:

```bash
bash /home/container/start-vllm.sh
```

## Optional registry push

Set `IMAGE_NAME` to your registry path, rebuild, then push:

```bash
IMAGE_NAME=ghcr.io/YOUR_ACCOUNT/nxly-vllm-pterodactyl ./build.sh
IMAGE_NAME=ghcr.io/YOUR_ACCOUNT/nxly-vllm-pterodactyl ./push.sh
```

A local image is enough when Wings and Docker run on the same GX10 node.
