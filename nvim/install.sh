#!/bin/sh

set -e

cd /tmp

FILENAME=nvim-linux64.deb

wget -O /tmp/$FILENAME https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
wget -O /tmp/$FILENAME https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb.sha256sum

sha256sum /tmp/$FILENAME > /tmp/checksum
sha256sum -c /tmp/checksum

sudo dpkg -i /tmp/$FILENAME

mkdir -p ~/.config
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim

echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after" >> ~/.config/nvim/init.vim
echo "let &packpath = &runtimepath" >> ~/.config/nvim/init.vim
echo "source ~/.vimrc" >> ~/.config/nvim/init.vim
