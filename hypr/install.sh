#!/bin/bash

if [ -d ~/.config/sway ]; then
    mv ~/.config/hypr ~/.config/hypr.bak
fi

ln -sf ~/.dotfiles/hypr ~/.config/hypr
