FROM nvcr.io/nvidia/vllm:26.05.post1-py3

RUN printf '#!/bin/sh\nexec /usr/bin/id -G\n' > /usr/local/bin/groups \
    && chmod +x /usr/local/bin/groups

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["bash"]