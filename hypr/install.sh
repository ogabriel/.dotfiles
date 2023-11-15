#!/bin/bash

if [ -d ~/.config/hypr ]; then
    mv ~/.config/hypr ~/.config/hypr.bak
fi

mkdir -p ~/.config/hypr
ln -sf ~/.dotfiles/hypr ~/.config/hypr
