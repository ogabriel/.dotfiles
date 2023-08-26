#!/bin/bash

if [ -d ~/.config/nvim ]; then
    mv ~/.config/nvim ~/.config/old_nvim
fi

ln -sf ~/.dotfiles/nvim_new_new ~/.config/nvim
