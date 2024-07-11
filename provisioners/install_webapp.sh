#!/bin/bash

WEBAPP_PATH=$1

echo -e "\nFormatting Scripts - dos2unix\n"
apt install dos2unix -y
find $WEBAPP_PATH -type f \( -name "*.sh" \) -print0 | xargs -0 dos2unix

bash $WEBAPP_PATH/deploy.sh $WEBAPP_PATH
