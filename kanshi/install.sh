#!/bin/sh

if [ -d ~/.config/kanshi ]; then
    mv ~/.config/kanshi ~/.config/kanshi.bk
fi

ln -sf ~/.dotfiles/kanshi ~/.config/kanshi
