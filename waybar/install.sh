#!/bin/bash

if [ -d ~/.config/waybar ]; then
    mv ~/.config/waybar ~/.config/old_waybar
fi

ln -sf ~/.dotfiles/waybar ~/.config/waybar
