#!/bin/bash

if [ -d ~/.config/swayidle ]; then
    mv ~/.config/swayidle ~/.config/swayidle.bak
fi

mkdir -p ~/.config/swayidle

ln -sf ~/.dotfiles/swayidle/hyprland_config ~/.config/swayidle/config
