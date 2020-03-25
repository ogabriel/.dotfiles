#!/bin/bash
# utils, programs that you may use for something

cd ~/.dotfiles

echo 'Updating and upgrading'
sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install dialog
cmd=(dialog --separate-output --checklist "Please select software you want to install: " 22 76 16)
options=(
        1 "vim" off
        2 "neovim" off
        3 "git" off
        4 "ctags" off)
        choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
        clear

for choice in $choices
do
    case $choice in
        1)
            /bin/bash ./install_vim.sh
            ;;
        2)
            /bin/bash ./install_neovim.sh
            ;;
        3)
            /bin/bash ./install_git.sh
            ;;
        4)
            /bin/bash ./install_ctags
            ;;
    esac
done
