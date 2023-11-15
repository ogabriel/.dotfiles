#!/bin/bash

rm .tmux.conf.bak
mr .tmux.conf.local.bak
mv ~/.tmux.conf ~/.tmux.conf.bak
mv ~/.tmux.conf.local ~/.tmux.conf.local.bak

ln -sf ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/tmux/tmux.conf.local ~/.tmux.conf.local
