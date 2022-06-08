su
cd /etc/ssh
rm -rf /etc/ssh/sshd_config


curl -o sshd_config https://raw.githubusercontent.com/thanhtamkaito/SettingVPS/setup/sshd_config

cd /root/.ssh

rm -rf /root/.ssh/authorized_keys
curl -o /root/.ssh/authorized_keys https://raw.githubusercontent.com/thanhtamkaito/SettingVPS/setup/id_rsa.pub

sudo chmod 700 /root
sudo chmod 700 /root/.ssh 
sudo chmod 660 /root/.ssh/authorized_keys 

systemctl restart sshd
systemctl status sshd

