#!/bin/sh

cd

echo "restore backup files for tmux"

# erase the source versions
rm .tmux.conf
rm .tmux.conf.local

# move all the originals back again
mv dotfiles_backup/.tmux.conf ~/
mv dotfiles_backup/.tmux.conf.local ~/

# if still something there, probaly is gonna fail
rmdir dotfiles_backup
