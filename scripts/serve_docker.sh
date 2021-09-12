#!/bin/bash --login
# This script is for activating the chatroom service at background
DOCKER_COMPOSE_FILE=$1
docker-compose -f $DOCKER_COMPOSE_FILE up -d 
