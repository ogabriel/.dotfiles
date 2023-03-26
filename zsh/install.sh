#!/bin/bash

ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
