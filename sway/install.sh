#!/bin/bash

if [ -d ~/.config/sway ]; then
    mv ~/.config/sway ~/.config/old_sway
fi

ln -sf ~/.dotfiles/sway ~/.config/sway
