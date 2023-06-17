#!/bin/bash

mv ~/.config/waybar ~/.config/old_waybar

ln -sf ~/.dotfiles/waybar ~/.config/waybar
