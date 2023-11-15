#!/bin/bash

if [ -d ~/.config/hypr ]; then
    rm -rf ~/.config/hypr.bak
    mv ~/.config/hypr ~/.config/hypr.bak
fi

ln -sf ~/.dotfiles/hypr ~/.config/hypr
