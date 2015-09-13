#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install zsh vim terminator curl xclip
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp .zshrc ~
source ~/.zshrc
cp .vimrc ~
cp terminator-config ~/.config/terminator/config

# Git Configuration
ssh-keygen -t rsa -b 4096 -C "njhazelh@gmail.com"
git config --global core.editor "vim"
git config --global push.default simple
git config --global user.name "Nick Jones"
git config --global user.email "njhazelh@gmail.com"

# Install nvm (NodeJS version Manager)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash
nvm install stable

sudo apt-get install openjdk-8-jdk

#Check to install docker
