su
cd /etc/ssh
rm -rf /etc/ssh/sshd_config


curl -o sshd_config https://raw.githubusercontent.com/thanhtamkaito/LinuxSetting/setup/sshd_config?token=GHSAT0AAAAAABVDEONCKZ774UEVU5LPOT6QYVAZFZA

cd /root/.ssh

rm -rf /root/.ssh/authorized_keys
curl -o /root/.ssh/authorized_keys https://raw.githubusercontent.com/thanhtamkaito/LinuxSetting/setup/id_rsa.pub?token=GHSAT0AAAAAABVDEONDHXPDFEG2W3PYVX36YVAZSJA

sudo chmod 700 /root
sudo chmod 700 /root/.ssh 
sudo chmod 600 /root/.ssh/authorized_keys 

systemctl restart sshd
systemctl status sshd

