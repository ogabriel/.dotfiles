#!/bin/bash

cd

sudo apt install tmux

# creating the backup folder for the original ones
mkdir -p .dotfiles_backup
mv .tmux.conf .dotfiles_backup
mv .tmux.conf.local .dotfiles_backup

# just adding a source to the files at HOME, to redirect to the dotfile configuration
ln -sf ~/.dotfiles/tmux/.tmux.conf .tmux.conf
ln -sf ~/.dotfiles/tmux/.tmux.conf.local .tmux.conf.local
