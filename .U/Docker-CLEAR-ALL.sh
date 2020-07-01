#!/bin/bash
INPUT_PARAM=$1

./Docker-stop-all.sh
sudo docker rm $(sudo docker ps -aq)

sudo docker rmi -f $(sudo docker images -q)
sudo docker volume rm $(docker volume ls -q)


sudo docker images 
sudo docker ps -a