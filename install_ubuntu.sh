#!/bin/bash

# Install oh-my-zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup symlinks
ln -ns ~/versioned/dotfiles/.aliases ~/.aliases
ln -ns ~/versioned/dotfiles/.functions ~/.functions
ln -ns ~/versioned/dotfiles/.gitconfig ~/.gitconfig
ln -nsf ~/versioned/dotfiles/.zshrc ~/.zshrc

sudo apt update
sudo apt upgrade -y

# Install fonts for oh-my-zsh
sudo apt-get install fonts-powerline

# Install VS Code
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install various packages
sudo apt install curl npm docker-compose -y
sudo apt autoremove -y
