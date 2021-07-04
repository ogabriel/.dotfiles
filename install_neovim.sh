#!/bin/bash

mkdir -p ~/.config
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim

echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after" >> ~/.config/nvim/init.vim
echo "let &packpath = &runtimepath" >> ~/.config/nvim/init.vim
echo "source ~/.vimrc" >> ~/.config/nvim/init.vim
