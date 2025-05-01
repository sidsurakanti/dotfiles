#!/bin/bash

echo "copying dotfiles"

cp -b -s ~/dotfiles/.zshrc ~/.zshrc
cp -b ~/dotfiles/.gitconfig ~/.gitconfig

# make sure /.config exists we can use it
mkdir -p ~/.config
cp -b ~/dotfiles/.config/starship.toml ~/.config/starship.toml

mkdir -p ~/.config/fastfetch
cp -b ~/dotfiles/.config/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc

echo "dotfiles copied!"

if [[ "$OSTYPE" == "darwin"* ]]; then
		echo "installing starship and fastfetch via brew"
		brew install starship fastfetch
		echo "done installing packages."
else
	echo "skipping brew install" 
fi

echo "all finished"

