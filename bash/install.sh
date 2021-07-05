#!/bin/sh
# adding configs to bash

cd
echo 'source ~/.dotfiles/bash/.bashrc' >> ~/.bashrc
echo 'source ~/.dotfiles/bash/.profile' >> ~/.profile
# source does not work on .inputrc
ln -sf ~/.dotfiles/bash/.inputrc ~/.inputrc

source ~/.bashrc
