curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p  ~/.config/nvim
cd ~/.config/nvim
curl -L -o init.vim  https://raw.githubusercontent.com/VuNguyenCoder/VimConfig/main/init.vim

