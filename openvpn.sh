
#https://www.cyberciti.biz/faq/howto-setup-openvpn-server-on-ubuntu-linux-14-04-or-16-04-lts/

wget https://git.io/vpn -O openvpn-install.sh
sudo chmod +x openvpn-install.sh
sudo bash openvpn-install.sh

sudo systemctl restart openvpn-server@server.service
sudo find / -type f -name "kaito.ovpn"
sudo cp /root/kaito-04.ovpn .
scp root@103.166.185.178:/root/kaito.ovpn f:/




sudo cp /path/to/your-client.ovpn /etc/openvpn/client/client.conf

sudo chmod 600 /etc/openvpn/client/client.conf

sudo systemctl enable openvpn-client@client

sudo systemctl start openvpn-client@client

sudo systemctl status openvpn-client@client



############## Auto connect client UBUNTU ################
sudo cp ci-server.ovpn /etc/openvpn/ci-server.conf
sudo systemctl enable openvpn@ci-server
systemctl start openvpn@ci-server
systemctl status openvpn@ci-server





























