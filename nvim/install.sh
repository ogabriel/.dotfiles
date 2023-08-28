#!/bin/bash

# dependencies
# - ripgrep
# - make (fzf)

if [ -d ~/.config/nvim ]; then
    mv ~/.config/nvim ~/.config/nvim.bak
fi

ln -sf ~/.dotfiles/nvim ~/.config/nvim
