#!/bin/bash
CONTAINER_NAME="rancher/rancher"
sudo docker stop "$(sudo docker ps -q  --filter ancestor=$CONTAINER_NAME --format="{{.ID}}")" 2>/dev/null

# //TODO: │always!!!

sudo docker run -d --restart=unless-stopped \
-p 4043:443 \
-p 8001:80 \
-v $(pwd)/./volDocker/rancher/var/lib/mysql:/var/lib/mysql --restart=unless-stopped \
$CONTAINER_NAME
# rancher/server 
	
# --db-host localhost  --db-port 3306 --db-user root --db-pass Ww123456 --db-name cattle


# -v $(pwd)/./volDocker/rancher/etc/rancher:/etc/rancher \


echo "$1"

# sudo docker logs $RESULT
