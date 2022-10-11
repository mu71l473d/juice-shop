#!/bin/bash

docker stop $(docker ps -qa)
#docker run -d -e "NODE_ENV=kiwa" -p 3000:3000 mu71l473d/kiwa-shop:v1.0.0
docker run -d -e "NODE_ENV=demo" -v "$(pwd)/config/demo.yml:/juice-shop/config/demo.yml" -p 80:3000 kiwashopregistry.azurecr.io/samples/kiwashop:dev
docker ps -a
