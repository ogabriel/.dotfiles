#!/bin/bash

# install ctags
sudo apt install \
    gcc make \
    pkg-config autoconf automake \
    python3-docutils \
    libseccomp-dev \
    libjansson-dev \
    libyaml-dev \
    libxml2-dev

mkdir ~/opensource
cd ~/opensource
git clone git@github.com:universal-ctags/ctags.git

cd ~/opensource/ctags
./autogen.sh
./configure
sudo make
sudo make install

# install this for deoplete
sudo apt install python3-pip
pip3 install --user pynvim
