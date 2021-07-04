#!/bin/bash

# dependencies
sudo apt install \
    gcc make \
    pkg-config autoconf automake \
    python3-docutils \
    libseccomp-dev \
    libjansson-dev \
    libyaml-dev \
    libxml2-dev

# download
mkdir -p ~/opensource
cd ~/opensource
git clone git@github.com:universal-ctags/ctags.git

# install it
cd ~/opensource/ctags
./autogen.sh
./configure
sudo make
sudo make install

# link the current ctags
ln -s ~/.dotfiles/ctags ~/.ctags.d
