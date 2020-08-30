#!/bin/bash
set -x
echo ${0##*/}
#!/ALWAYs


IMAGE_NM="gitlab/gitlab-ee"
CONTAINER_NM="RGSgit"
sudo docker stop $CONTAINER_NM 2>/dev/null
sudo docker rm $CONTAINER_NM 2>/dev/null

sudo docker run -d --restart=no \
--name $CONTAINER_NM \
-p 8000:80 \
-p 2222:22 \
-v $(pwd)/./volDocker/gitlab/etc/gitlab:/etc/gitlab \
-v $(pwd)/./volDocker/gitlab/var/log/gitlab:/var/log/gitlab \
-v $(pwd)/./volDocker/gitlab/var/opt/gitlab:/var/opt/gitlab \
$IMAGE_NM
# echo "$RESULT"


# docker run -d -p 5000:5000 --restart=always --name registry registry:2
