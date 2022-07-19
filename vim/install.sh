#!/bin/bash

sudo apt install dialog

cmd=(dialog --separate-output --checklist "Select vim options" 22 76 16)
options=(
        1 "dependencies" on
        2 "install vim" on
        3 "install neovim" off
        4 "setup vim normal" off
        5 "setup vim separated" off)
        choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
        clear

for choice in $choices
do
    case $choice in
        1)
            # search
            sudo apt install silversearcher-ag fzf

            # install this for deoplete
            sudo apt install python3-pip
            pip3 install --user pynvim
            ;;
        2)
            sudo apt install vim
            ;;
        3)
            sudo apt install neovim

            mkdir -p ~/.config
            mkdir -p ~/.config/nvim
            touch ~/.config/nvim/init.vim

            echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after" >> ~/.config/nvim/init.vim
            echo "let &packpath = &runtimepath" >> ~/.config/nvim/init.vim
            echo "source ~/.vimrc" >> ~/.config/nvim/init.vim
            ;;
        4)
            /bin/bash ~/.dotfiles/vim/normal/install.sh
            ;;
        4)
            /bin/bash ~/.dotfiles/vim/separated/install.sh
            ;;
    esac
done
