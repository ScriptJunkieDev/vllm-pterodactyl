#!/bin/bash
set -e

echo "Pterodactyl startup: ${STARTUP}"
cd /home/container
exec /bin/bash -lc "${STARTUP}"