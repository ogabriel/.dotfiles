echo "record grub configs in the file"

cd

sudo mv .dotfiles/grub/grub /etc/default/grub

sudo update-grub
