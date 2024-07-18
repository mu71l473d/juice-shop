#!/bin/bash
echo "[*] Stopping old containers. dstop.sh is not necessary anymore."
sudo docker stop $(sudo docker ps -a | grep kiwashop | awk -F ' ' '{print $1}')
sudo docker rm $(sudo docker ps -a | grep kiwashop | awk -F ' ' '{print $1}')

echo "[*] Starting shop."
#sudo docker run -d -e "NODE_ENV=kiwa" -v $(pwd)/config/kiwa.yml:/juice-shop/config/kiwa.yml -p 80:3000 kiwashopregistry.azurecr.io/samples/kiwashop:dev
sudo docker run -d -e "NODE_ENV=kiwa" -v $(pwd)/src/app/navbar/navbar.component.html:/juice-shop/src/app/navbar/navbar.component.html -p 80:3000 kiwashopregistry.azurecr.io/samples/kiwashop:dev

echo "[*] showing the process of the container"
sudo docker ps -a | grep kiwashop

