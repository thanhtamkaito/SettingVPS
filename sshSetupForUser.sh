su

cd /etc/ssh
rm -rf /etc/ssh/sshd_config


curl -o sshd_config https://raw.githubusercontent.com/thanhtamkaito/SettingVPS/setup/sshd_config

cd /home/ubuntu/.ssh

rm -rf /home/ubuntu/.ssh/authorized_keys
curl -o /home/ubuntu/.ssh/authorized_keys https://raw.githubusercontent.com/thanhtamkaito/SettingVPS/setup/id_rsa.pub

sudo chmod 700 /home/ubuntu
sudo chmod 700 /home/ubuntu/.ssh
sudo chmod 660 /home/ubuntu/.ssh/authorized_keys
sudo chown -R root:ubuntu /home/ubuntu/.ssh/authorized_keys

systemctl restart sshd
systemctl status sshd



