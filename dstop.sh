#!/bin/bash

sudo docker stop $(sudo docker ps -a | grep kiwashop | awk -F ' ' '{print $1}')
sudo docker rm $(sudo docker ps -a | grep kiwashop | awk -F ' ' '{print $1}')

