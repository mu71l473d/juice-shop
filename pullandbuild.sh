sudo systemctl start docker
git pull
sudo docker build -t kiwashopregistry.azurecr.io/samples/kiwashop:dev .
