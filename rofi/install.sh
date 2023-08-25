#!/bin/bash

if [ -d ~/.config/rofi ]; then
    mv ~/.config/rofi ~/.config/rofi.bak
fi

ln -sf ~/.dotfiles/rofi ~/.config/rofi
