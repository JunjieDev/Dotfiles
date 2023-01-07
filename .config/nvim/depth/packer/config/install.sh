#!/bin/bash

apt-get update
apt-get install build-essential git curl tree software-properties-common fd-find ripgrep -y
add-apt-repository ppa:neovim-ppa/stable
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get update
apt-get install neovim nodejs -y

npm i -g pyright vscode-langservers-extracted

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#FD-find
mkdir -p ~/.local/bin
ln -s $(which fdfind) ~/.local/bin/fd
echo '' >> ~/.bashrc
echo '#FD-find : https://github.com/sharkdp/fd#installation' >> ~/.bashrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

rm -r ./install.sh
