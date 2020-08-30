#!/bin/bash

echo ${0##*/}
#!/ALWAYs
INPUT_PARAM=$1

sudo docker stop $(sudo docker ps -q)