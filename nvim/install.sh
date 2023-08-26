#!/bin/sh

if [ -d ~/.config/nvim ]; then
    mv ~/.config/nvim ~/.config/nvim.bak
fi

ln -sf ~/.dotfiles/nvim/ ~/.config/nvim
