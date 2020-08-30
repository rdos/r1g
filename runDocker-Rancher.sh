#!/bin/bash
set -x
echo ${0##*/}
#!/ALWAYs

# sudo docker stop "$(sudo docker ps -q  --filter ancestor=$CONTAINER_NAME --format="{{.ID}}")" 2>/dev/null
IMAGE_NM="rancher/rancher"
CONTAINER_NM="RGSran"
sudo docker stop $CONTAINER_NM 2>/dev/null
sudo docker rm $CONTAINER_NM 2>/dev/null

# //TODO: │always!!!

sudo docker run -d --restart=no \
--name $CONTAINER_NM \
-p 4043:443 \
-p 8001:80 \
-v $(pwd)/./volDocker/rancher/var/lib/rancher:/var/lib/rancher \
-v $(pwd)/./volDocker/rancher/var/lib/rancher-data:/var/lib/rancher-data \
$IMAGE_NM
# rancher/server 
	
# --db-host localhost  --db-port 3306 --db-user root --db-pass Ww123456 --db-name cattle


# -v $(pwd)/./volDocker/rancher/etc/rancher:/etc/rancher \


echo "$1"

# sudo docker logs $RESULT
