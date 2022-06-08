su

cd /etc/ssh
rm -rf /etc/ssh/sshd_config


curl -o sshd_config https://raw.githubusercontent.com/thanhtamkaito/LinuxSetting/setup/sshd_config?token=GHSAT0AAAAAABVDEONCKZ774UEVU5LPOT6QYVAZFZA



cd /home/ubuntu/.ssh

rm -rf /home/ubuntu/.ssh/authorized_keys
curl -o /home/ubuntu/.ssh/authorized_keys https://raw.githubusercontent.com/thanhtamkaito/LinuxSetting/setup/id_rsa.pub?token=GHSAT0AAAAAABVDEONDHXPDFEG2W3PYVX36YVAZSJA

vi /home/ubuntu/.ssh/authorized_keys

sudo chmod 700 /home/ubuntu
sudo chmod 700 /home/ubuntu/.ssh
sudo chmod 600 /home/ubuntu/.ssh/authorized_keys
sudo chown -R  root:ubuntu /home/ubuntu/.ssh/authorized_keys

systemctl restart sshd
systemctl status sshd

