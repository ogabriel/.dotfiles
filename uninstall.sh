cd

# erase the source versions
rm .vimrc
rm .vimrc.plugins
rm .tmux.conf
rm .tmux.conf.local

# move all the originals back again
mv dotfiles_backup/.vimrc ~/
mv dotfiles_backup/.vimrc.plugins ~/
mv dotfiles_backup/.tmux.conf ~/
mv dotfiles_backup/.tmux.conf.local ~/

# if still something there, probaly is gonna fail
rmdir dotfiles_backup
