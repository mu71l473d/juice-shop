#!/bin/bash

sudo docker stop $(docker ps -qa)
#docker run -d -e "NODE_ENV=kiwa" -p 3000:3000 mu71l473d/kiwa-shop:v1.0.0
#sudo docker run -d -i -t -e "NODE_ENV=kiwa" -v $(pwd)/config/kiwa.yml:/juice-shop/config/kiwa.yml -p 3000:3000 kiwashopregistry.azurecr.io/samples/kiwashop 
sudo docker run -d -e "NODE_ENV=demo" -v $(pwd)/config/demo.yml:/juice-shop/config/demo.yml -p 80:3000 kiwashopregistry.azurecr.io/samples/kiwashop:dev
#sudo docker run -d -e "NODE_ENV=mozilla" -v $(pwd)/config/kiwa.yml:/juice-shop/config/kiwa.yml -p 3000:3000 kiwashopregistry.azurecr.io/samples/kiwashop:dev
sudo docker ps -a

