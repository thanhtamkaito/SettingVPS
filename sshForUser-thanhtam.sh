su
cd /etc/ssh
rm -rf /etc/ssh/sshd_config


curl -o sshd_config https://raw.githubusercontent.com/thanhtamkaito/SettingVPS/setup/sshd_config

mkdir -p /home/thanhtam/.ssh
cd /home/thanhtam/.ssh

rm -rf /home/thanhtam/.ssh/authorized_keys
curl -o /home/thanhtam/.ssh/authorized_keys https://raw.githubusercontent.com/thanhtamkaito/SettingVPS/setup/id_rsa.pub

sudo chmod 700 /home/thanhtam
sudo chmod 700 /home/thanhtam/.ssh
sudo chmod 660 /home/thanhtam/.ssh/authorized_keys
sudo chown -R root:thanhtam /home/thanhtam/.ssh/authorized_keys

systemctl restart sshd
systemctl status sshd
