#!/bin/bash

sudo apt update && sudo apt upgrade
sudo apt autoremove

echo "installing zsh shell"
sudo apt install zsh

echo "setting default shell as zsh"
chsh -s $(which zsh)

echo "will restart shell at the end of script"

# https://github.com/ohmyzsh/ohmyzsh
echo "downloading oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

