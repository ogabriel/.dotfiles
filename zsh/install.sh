#!/bin/bash

ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
