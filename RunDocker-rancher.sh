#!/bin/bash
CONTAINER_NAME="rancher/rancher"
sudo docker stop "$(sudo docker ps -q  --filter ancestor=$CONTAINER_NAME --format="{{.ID}}")" 2>/dev/null

# //TODO: │always!!!
sudo docker run -d --restart=always \
-p 443:443 \
-p 80:80 \
$CONTAINER_NAME

# -v $(pwd)/./volDocker/rancher/etc/rancher:/etc/rancher \


echo "$1"

# sudo docker logs $RESULT
