#!/bin/bash

if [ -d ~/.config/hypr ]; then
    mv ~/.config/hypr ~/.config/hypr.bak
fi

ln -sf ~/.dotfiles/hypr ~/.config/hypr
