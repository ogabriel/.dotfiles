#!/bin/bash

# link .vimrc
ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc

# link folder with the rest of the configuration
ln -s ~/.dotfiles/vim ~/.vim
