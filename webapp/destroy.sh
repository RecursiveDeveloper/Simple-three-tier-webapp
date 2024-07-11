#!/bin/bash

WEBAPP_PATH=$1

echo -e "\n*************************"
echo "Destroying all services"
echo -e "*************************\n"
docker compose -f $WEBAPP_PATH/docker-compose.yml down \
    --remove-orphans \
    --rmi all
