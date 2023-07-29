#!/bin/bash

rm .zshrc

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# link files
ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc

PLUGINS_PATH=~/.oh-my-zsh/custom

# install vim plugin
git clone https://github.com/jeffreytse/zsh-vi-mode $PLUGINS_PATH/plugins/zsh-vi-mode

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions $PLUGINS_PATH/plugins/zsh-autosuggestions

# install zsh-automatic
git clone https://github.com/zsh-users/zsh-completions $PLUGINS_PATH/plugins/zsh-completions

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting $PLUGINS_PATH/plugins/zsh-syntax-highlighting
