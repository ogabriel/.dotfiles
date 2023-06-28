#!/bin/bash

mkdir -p ~/.config/alacritty
mv ~/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml.bak

ln -s ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
