#!/bin/bash
apt update
apt install apache2 -y
cd /var/www/html/
rm -rf /var/www/html/*
wget https://raw.githubusercontent.com/thanhtamkaito/SettingVPS/setup/index.html
mkdir -p product
cd product
rm -rf ./product
wget https://raw.githubusercontent.com/thanhtamkaito/SettingVPS/setup/index.html
cd ~
