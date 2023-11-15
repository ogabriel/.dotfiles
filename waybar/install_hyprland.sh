#!/bin/bash

if [ -d ~/.config/waybar ]; then
    rm -rf ~/.config/waybar.bak
    mv ~/.config/waybar ~/.config/waybar.bak
fi

mkdir -p ~/.config/waybar

ln -sf ~/.dotfiles/waybar/hyprland_config ~/.config/waybar/config
ln -sf ~/.dotfiles/waybar/style.css ~/.config/waybar/style.css
ln -sf ~/.dotfiles/waybar/modules/ ~/.config/waybar/modules
