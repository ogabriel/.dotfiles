#!/bin/bash

if [ -d ~/.config/wal ]; then
    mv ~/.config/wal ~/.config/wal.bk
fi

ln -sf ~/.dotfiles/wal ~/.config/wal
