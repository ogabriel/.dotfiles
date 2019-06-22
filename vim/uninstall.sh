#!/bin/sh

cd

echo "restore backup files for vim"

# erase the source versions
rm .vimrc
rm .vimrc.plugins

# move all the originals back again
mv dotfiles_backup/.vimrc ~/
mv dotfiles_backup/.vimrc.plugins ~/

# if still something there, probaly is gonna fail
rmdir dotfiles_backup
