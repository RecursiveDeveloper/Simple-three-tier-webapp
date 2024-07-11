#!/bin/bash

WEBAPP_PATH=$1

echo -e "\n*************************"
echo "Deploying services"
echo -e "*************************\n"
docker compose -f $WEBAPP_PATH/docker-compose.yml up \
    --build \
    --detach
