#!/bin/bash

# install nano
sudo apt update 
sudp apt install nano -y

# install script
 bash <(curl -s https://gitlab.com/Shinobi-Systems/Shinobi-Installer/raw/master/shinobi-docker.sh)

# login 
echo "Default Superuser : admin@shinobi.video"
echo "Default Superuser Password : admin"
echo " http://YOUR_IP_ADDRESS:8080/super "