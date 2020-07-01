#!/bin/bash
set -x
CONTAINER_NAME="gitlab/gitlab-ee"
sudo docker stop "$(sudo docker ps -q  --filter ancestor=$CONTAINER_NAME --format="{{.ID}}")" 2>/dev/null


sudo docker run -d \
-p 8000:80 \
-p 22:22 \
-v $(pwd)/./volDocker/gitlab/etc/gitlab:/etc/gitlab \
-v $(pwd)/./volDocker/gitlab/var/log/gitlab:/var/log/gitlab \
-v $(pwd)/./volDocker/gitlab/var/opt/gitlab:/var/opt/gitlab \
$CONTAINER_NAME
# echo "$RESULT"


# docker run -d -p 5000:5000 --restart=always --name registry registry:2
