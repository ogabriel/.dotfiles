#!/bin/bash
# read this file carefuly, then, run the command:
cd

# creating the backup folder for the original ones
mkdir .dotfiles_backup
mv .vimrc .dotfiles_backup
mv .vimrc.plugins .dotfiles_backup

# just adding a source to the files at HOME, to redirect to the dotfile configuration
ln -sf ~/.dotfiles/vim/.vimrc .vimrc
ln -sf ~/.dotfiles/vim/.vimrc.plugins .vimrc.plugins
