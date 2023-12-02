#!/bin/sh

if [ -f /etc/arch-release ]; then
    sudo pacman -S --needed --noconfirm zsh tmux git
fi

ln -sf ~/.dotfiles/tmux/tmux.new.conf ~/.tmux.conf
