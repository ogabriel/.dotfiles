#!/bin/bash

sudo apt install ranger
touch ~/.config/ranger/rc.conf
ln -sf ~/.dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
