#!/bin/bash
# read this file carefuly, then, run the command:
cd

echo "add new configuration to vim"

# creating the backup folder for the original ones
mkdir .dotfiles_backup
mv .vimrc .dotfiles_backup
mv .vimrc.plugins .dotfiles_backup

# just adding a source to the files at HOME, to redirect to the dotfile configuration
ln -sf ~/.dotfiles/vim_old/vimrc .vimrc
ln -sf ~/.dotfiles/vim_old/vimrc.plugins .vimrc.plugins
