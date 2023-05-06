sudo apt-get update
sudo apt-get upgrade -y
sudo apt install curl -y
sudo apt -y install gcc g++ make -y
sudo apt install nodejs -y
curl -s https://deb.nodesource.com/setup_16.x | sudo bash
sudo apt install nodejs -y
sudo apt install npm
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt install python3.9 -y
sudo apt install python3-pip -y
sudo apt install net-tools
sudo apt install pacman -y
sudo apt-get install openssh-server -y
sudo apt install git-all -y
sudo apt install tar -y
sudo apt install unzip -y
sudo apt install ripgrep -y
sudo apt install pacman -y
sudo apt install python3-pip -y
sudo apt-get install pip -y
sudo apt install neovim -y
sudo npm install neovim -g
sudo apt-get install ruby-neovim -y
pip3 install pynvim
pip3 install --upgrade pynvim
sudo apt install xsel
sudo apt-get install python-all -y
sudo apt-get install gcc -y
sudo apt-get install nmap -y
sudo apt install netcat-traditional -y
sudo apt install unicorn -y

sudo apt install openjdk-11-jdk -y
wget -p -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins

 
sudo apt  install docker.io -y
sudo apt  install docker-compose -y
sudo groupadd docker
sudo gpasswd -a ubuntu docker
sudo usermod -a -G docker ubuntu
sudo chmod 664 /var/run/docker.sock



curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'





cd /etc/ssh
rm -rf /etc/ssh/sshd_config
curl -o sshd_config https://raw.githubusercontent.com/thanhtamkaito/SettingVPS/setup/sshd_config
mkdir -p /home/ubuntu/.ssh
cd /home/ubuntu/.ssh
rm -rf /home/ubuntu/.ssh/authorized_keys
curl -o /home/ubuntu/.ssh/authorized_keys https://raw.githubusercontent.com/thanhtamkaito/SettingVPS/setup/id_rsa.pub
sudo chmod 700 /home/ubuntu
sudo chmod 700 /home/ubuntu/.ssh
sudo chmod 660 /home/ubuntu/.ssh/authorized_keys
sudo chown -R root:ubuntu /home/ubuntu/.ssh/authorized_keys

systemctl restart sshd
systemctl status sshd
sudo reboot







