#!/bin/bash

# Clone Powerline fonts repo
git clone https://github.com/powerline/fonts.git --depth=1

# Install
cd fonts
./install.sh # To uninstall, change this to ./uninstall.sh

# Clean up
cd ..
rm -rf fonts
