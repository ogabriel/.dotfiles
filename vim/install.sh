#!/bin/bash

if [ -d ~/.vim ]; then
    mv ~/.vim ~/.vim.bak
fi

ln -sf ~/.dotfiles/vim/ ~/.vim
