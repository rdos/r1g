#!/bin/bash
set -x
echo ${0##*/}
#!/ALWAYs

set -x

IMAGE_NM="registry:2"
CONTAINER_NM="RGS_REG"
sudo docker stop $CONTAINER_NM 2>/dev/null
sudo docker rm $CONTAINER_NM 2>/dev/null

sudo docker run -d  --restart=no \
-p 5003:5000 --name $CONTAINER_NM \
$IMAGE_NM
