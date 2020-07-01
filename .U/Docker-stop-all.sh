#!/bin/bash
INPUT_PARAM=$1

sudo docker stop $(sudo docker ps -q)