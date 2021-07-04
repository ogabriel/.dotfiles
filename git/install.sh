#!/bin/bash

read -rp "github email: " email
git config --global user.email $email

read -rp "github name: " name
git config --global user.name "$name"

git config --global init.templatedir ~/.dotfiles/git/templates
git config --global include.path ~/.dotfiles/git/.gitalias
