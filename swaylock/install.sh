#!/bin/bash

if [ -d ~/.config/swaylock ]; then
    mv ~/.config/swaylock ~/.config/swaylock.bak
fi

mkdir -p ~/.config/swaylock

ln -sf ~/.dotfiles/swaylock/config ~/.config/swaylock/config
