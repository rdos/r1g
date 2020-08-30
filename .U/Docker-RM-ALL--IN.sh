#!/bin/bash
echo ${0##*/}
sudo docker stop $(sudo docker ps -aq) 2>/dev/null
sudo docker rm $(sudo docker ps -aq) 2>/dev/null

sudo docker rmi -f  $(sudo docker images -aq) 2>/dev/null
sudo docker volume rm $(sudo docker volume ls -q) 2>/dev/null


sudo docker ps -a
sudo docker images -a
