
#!/bin/bash
  
cd /etc/ssh
rm -rf /etc/ssh/sshd_config


curl -o sshd_config https://raw.githubusercontent.com/thanhtamkaito/SettingVPS/setup/sshd_config

mkdir -p /home/cajcbads/.ssh
cd /home/cajcbads/.ssh

rm -rf /home/cajcbads/.ssh/authorized_keys
curl -o /home/cajcbads/.ssh/authorized_keys https://raw.githubusercontent.com/thanhtamkaito/SettingVPS/setup/id_rsa.pub

sudo chmod 700 /home/cajcbads
sudo chmod 700 /home/cajcbads/.ssh
sudo chmod 660 /home/cajcbads/.ssh/authorized_keys
sudo chown -R root:cajcbads /home/cajcbads/.ssh/authorized_keys

systemctl restart sshd
systemctl status sshd
