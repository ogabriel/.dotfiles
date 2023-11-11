#!/bin/bash

if [ -d ~/.config/waybar ]; then
    mv ~/.config/waybar ~/.config/waybar.bak
fi

mkdir -p ~/.config/waybar

ln -sf ~/.dotfiles/waybar/sway_config ~/.config/waybar/config
ln -sf ~/.dotfiles/waybar/style.css ~/.config/waybar/style.css
ln -sf ~/.dotfiles/waybar/modules/ ~/.config/waybar/modules
