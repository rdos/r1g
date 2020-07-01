#!/bin/bash
# bash -x
CONTAINER_NAME="jenkins/jenkins"
sudo docker stop "$(sudo docker ps -q  --filter ancestor=$CONTAINER_NAME --format="{{.ID}}")" 2>/dev/null

docker run -d -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 :lts
sudo docker run -d \
-p 8000:80 \
-p 22:22 \
-v $(pwd)/./volDocker/gitlab/etc/gitlab:/etc/gitlab \
-v $(pwd)/./volDocker/gitlab/var/log/gitlab:/var/log/gitlab \
-v $(pwd)/./volDocker/gitlab/var/opt/gitlab:/var/opt/gitlab \
$CONTAINER_NAME


# echo "$RESULT"

# sudo docker logs $RESULT
