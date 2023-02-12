
#https://www.cyberciti.biz/faq/howto-setup-openvpn-server-on-ubuntu-linux-14-04-or-16-04-lts/

wget https://git.io/vpn -O openvpn-install.sh
sudo chmod +x openvpn-install.sh
sudo bash openvpn-install.sh

sudo systemctl restart openvpn-server@server.service
sudo find / -type f -name "kaito.ovpn"
sudo cp /root/kaito-04.ovpn .
scp ubuntu@122.xxxxxxx:kaito.ovpn f:/






























