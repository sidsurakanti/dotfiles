#!/usr/bin/env zsh

echo "simlinking dotfiles"

files=(.zshrc .gitconfig aliases.zsh .config .wezterm.lua)
dir="$HOME/dotfiles"

for file in $files; do
    ln -sfT "$dir/$file" "$HOME/$file"
done

echo "dotfiles linked!"

if [[ "$OSTYPE" == "darwin"* ]]; then
		echo "installing deps w brew"
		brew neovim install starship fastfetch ripgrep unzip
		echo "done installing packages."
else
	echo "skipping brew install" 
fi

echo "all finished!"

