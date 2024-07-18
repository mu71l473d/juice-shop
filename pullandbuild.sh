#!/bin/bash

GREEN='\033[1;32m'
NC='\033[0m'

echo -e "${GREEN}[*] Starting docker if it is not started${NC}"
sudo systemctl start docker
echo -e "${GREEN}[*] Pulling newest version from github${NC}"
git pull
echo -e "${GREEN}[*] Starting the build with tag kiwashopregistry.azurecr.io/samples/kiwashop:dev${NC}"
sudo docker build -t kiwashopregistry.azurecr.io/samples/kiwashop:dev .
