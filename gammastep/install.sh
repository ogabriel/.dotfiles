#!/bin/bash

if [ -d ~/.config/gammastep ]; then
    mv ~/.config/gammastep ~/.config/gammastep.bk
fi

mkdir -p ~/.config/gammastep

ln -sf ~/.dotfiles/gammastep/config.ini ~/.config/gammastep/config.ini
