echo "record grub configs in the file"

cd

echo `~/.dotfiles/grub` >> /etc/default/grub

update-grub
