#!/bin/bash

if [ -d ~/.config/rofi ]; then
    mv ~/.config/rofi ~/.config/old_rofi
fi

ln -sf ~/.dotfiles/rofi ~/.config/rofi
