#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc

chsh -s $(which zsh)

echo "Dont forget to reboot!"
