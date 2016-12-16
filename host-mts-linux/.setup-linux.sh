#!/bin/bash

cd ~

echo "Adding repositories and apt-get update..."
sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm -y
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update

echo "Installing and setting up rcm..."
sudo apt-get install rcm -y
rcup -vB mts-linux

echo "Installing ZSH..."
sudo apt-get install zsh -y
chsh -s $(which zsh)

echo "Installing oh-my-zsh..."
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "Installing and setting up NeoVim..."
sudo apt-get install software-properties-common -y
sudo apt-get install neovim -y
sudo apt-get install python-dev python-pip python3-dev python3-pip -y
sudo pip install neovim
sudo pip3 install neovim
git clone https://github.com/flybayer/dot_vim.git ~/.vim
cd ~/.vim
scripts/setup

echo "===================="
echo "You're all set up!"
echo "Log out and back in for everything to take effect"
