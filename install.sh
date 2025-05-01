#!/bin/bash

echo "simlinking dotfiles"

ln -s ~/dotfiles/.zshrc ~/.zshrc
# make sure /.config exists we can use it
mkdir -p ~/.config
ln -s ~/dotfiles/.config/starship.toml ~/.config/starship.toml
mkdir -p ~/.config/fastfetch
ln -s ~/dotfiles/.config/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

echo "done!"
