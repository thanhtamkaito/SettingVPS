su
cd /etc/ssh
rm -rf /etc/ssh/sshd_config
curl -o sshd_config https://raw.githubusercontent.com/thanhtamkaito/LinuxSetting/setup/sshd_config?token=GHSAT0AAAAAABVDEONCKZ774UEVU5LPOT6QYVAZFZA

sudo chmod /home/ubuntu                               700
sudo chmod /home/ubuntu/.ssh                          700
sudo chmod /home/ubuntu/.ssh/authorized_keys          600
