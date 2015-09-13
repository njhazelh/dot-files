#!/bin/bash

# Update, upgrade, and install
sudo apt-get --assume-yes update
sudo apt-get --assume-yes upgrade
sudo apt-get --assume-yes install zsh vim terminator curl xclip git

# Clone the repo
mkdir ~/dev
cd ~/dev
git clone https://github.com/njhazelh/dot-files.git
cd dot-files

# Install zsh and ohmyzsh!
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp .zshrc ~
source ~/.zshrc

# Configure vim
cp .vimrc ~

# Configure terminator
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
