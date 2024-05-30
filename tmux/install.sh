#!/bin/bash

if [ -f /etc/arch-release ]; then
    if ! pacman -Qs tmux >/dev/null || ! pacman -Qs zsh >/dev/null || ! pacman -Qs git >/dev/null; then
        sudo pacman -S --needed --noconfirm tmux zsh git
    fi
fi

mv ~/.tmux.conf ~/.tmux.conf.bak
ln -sf ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
