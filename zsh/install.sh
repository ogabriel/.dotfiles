#!/bin/bash

rm .zshrc

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# link files
ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/.dotfiles/zsh/p10k.zsh ~/.p10k.zsh
