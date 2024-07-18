#!/bin/bash
GREEN='\033[1;32m'
NC='\033[0m'

echo -e "${GREEN}[*] Stopping old kiwashop old containers. dstop.sh is not necessary anymore.${NC}"
sudo docker stop $(sudo docker ps -a | grep kiwashop | awk -F ' ' '{print $1}')

echo -e "${GREEN}[*] Removing non-active images${NC}"
sudo docker rm $(sudo docker ps -a | grep kiwashop | awk -F " " '{print $1}')

echo -e "${GREEN}[*] Starting kiwashop."
#sudo docker run -d -e "NODE_ENV=kiwa" -v $(pwd)/config/kiwa.yml:/juice-shop/config/kiwa.yml -p 80:3000 kiwashopregistry.azurecr.io/samples/kiwashop:dev
sudo docker run -d -e "NODE_ENV=kiwa" -v $(pwd)/src/app/navbar/navbar.component.html:/juice-shop/src/app/navbar/navbar.component.html -p 80:3000 kiwashopregistry.azurecr.io/samples/kiwashop:dev

echo -e "${GREEN}[*] Showing the process of the container${NC}"
sudo docker ps -a | grep kiwashop

