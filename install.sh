#!/bin/bash

echo "siminking dotfiles"

ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/aliases.zsh ~/aliases.zsh

# make sure /.config exists we can use it
mkdir -p ~/.config
ln -s ~/dotfiles/.config/starship.toml ~/.config/starship.toml
mkdir -p ~/.config/fastfetch
ln -s ~/dotfiles/.config/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

echo "dotfiles linked!"

if [[ "$OSTYPE" == "darwin"* ]]; then
		echo "installing starship and fastfetch via brew"
		brew install starship fastfetch
		echo "done installing packages."
else
	echo "skipping brew install" 
fi

echo "all finished"

