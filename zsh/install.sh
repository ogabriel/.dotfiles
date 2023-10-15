#!/bin/bash

if [ -f /etc/arch-release ]; then
    sudo pacman -S --noconfirm --needed git zsh curl
elif [ -f /etc/debian_version ]; then
    sudo apt install -y git zsh curl
fi

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/.dotfiles/zsh/p10k.zsh ~/.p10k.zsh
