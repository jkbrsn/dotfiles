#!/bin/bash

# Install oh-my-zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup symlinks
ln -ns ~/versioned/dotfiles/.aliases ~/.aliases
ln -ns ~/versioned/dotfiles/.functions ~/.functions
ln -ns ~/versioned/dotfiles/.gitconfig ~/.gitconfig
ln -nsf ~/versioned/dotfiles/.zshrc ~/.zshrc

# Install fonts for oh-my-zsh
sudo apt-get install fonts-powerline

# Install various packages
sudo apt update
sudo apt install wget curl code nodejs npm docker-compose -y
sudo apt upgrade -y
sudo apt autoremove -y
