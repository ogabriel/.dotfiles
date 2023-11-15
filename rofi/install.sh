#!/bin/bash

if [ -d ~/.config/rofi ]; then
    rm -rf ~/.config/rofi.bak
    mv ~/.config/rofi ~/.config/rofi.bak
fi

ln -sf ~/.dotfiles/rofi ~/.config/rofi
