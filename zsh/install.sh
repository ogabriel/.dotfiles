#!/bin/bash

if [ -f /etc/arch-release ]; then
    sudo pacman -S --noconfirm --needed git zsh curl bash-completion
    chsh -s $(which zsh)
elif [ -f /etc/debian_version ]; then
    sudo apt install -y git zsh curl
fi

ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/.dotfiles/zsh/zimrc ~/.zimrc
