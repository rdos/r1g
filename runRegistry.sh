#!/bin/bash
set -x


# sudo docker stop "$(sudo docker ps -q  --filter ancestor=$CONTAINER_NAME --format="{{.ID}}")" 2>/dev/null

sudo docker rm RGS_REGISTRY

sudo docker run -d  --restart=always \
-p 5003:5000 --name RGS_REGISTRY \
"registry:2"
# -v $(pwd)/./volDocker/Registry/etc/docker/registry/config.yml:/etc/docker/registry/config.yml \
