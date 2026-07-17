FROM nvcr.io/nvidia/vllm:26.05.post1-py3

# Remove NVIDIA's inherited entrypoint so Pterodactyl/Wings can run
# the egg startup command directly.
ENTRYPOINT ["/bin/bash", "-lc"]
CMD ["bash"]
