#!/bin/bash

echo "siminking dotfiles"

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/aliases.zsh ~/aliases.zsh
ln -sf ~/dotfiles/.wezterm.lua ~/.wezterm.lua

# make sure /.config exists we can use it
mkdir -p ~/.config
# ln -sf ~/dotfiles/.config/starship.toml ~/.config/starship.toml
ln -sf ~/dotfiles/.config/* ~/.config/
# mkdir -p ~/.config/nvim
# ln -sf ~/dotfiles/config/nvim ~/.config/
# mkdir -p ~/.config/fastfetch
# ln -sf ~/dotfiles/.config/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

echo "dotfiles linked!"

if [[ "$OSTYPE" == "darwin"* ]]; then
		echo "installing starship and fastfetch via brew"
		brew install starship fastfetch
		echo "done installing packages."
else
	echo "skipping brew install" 
fi

echo "all finished"

