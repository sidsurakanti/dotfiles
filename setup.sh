#!/bin/bash

read -n 1 -s -r -p "press any key to start setup script..."

read -n 1 -s -r -p "updating apt"
sudo apt update && sudo apt upgrade
sudo apt autoremove
clear

read -n 1 -s -r -p "installing zsh shell"
sudo apt install -y zsh
clear

echo "setting default shell as zsh"
chsh -s $(which zsh)

echo "will restart shell at the end of script"

# https://github.com/ohmyzsh/ohmyzsh
read -n 1 -s -r -p "downloading oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
clear


# https://docs.github.com/en/authentication/connecting-to-github-with-ssh
read -p "would you like to add github ssh? (y/n): " answer
if [ "$answer" = "y" ]; then
  read -p "please enter the email you use for your github account: " user_email
  ssh-keygen -t ed25519 -C "$user_email"
  cat ~/.ssh/id_ed25519.pub
  read -n 1 -s -r -p "please add the following key to github ssh"
elif [ "$answer" = "n" ]; then
  echo "canceled."
else
  echo "invalid input."
fi
clear

read -n 1 -s -r -p "syncing dotfiles"
cd ~/dotfiles || { echo "dotfiles not found"; exit 1; }
chmod +x ./install.zsh
./install.zsh

# install linuxbrew (you don't have to)
read -n 1 -s -r -p "installing linuxbrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo apt-get install -y build-essential
clear

echo "setting up brew env"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

read -n 1 -s -r -p "installing gcc neovim starship fastfetch ripgrep unzip tree"
brew install gcc neovim starship fastfetch ripgrep unzip tree
clear

read -n 1 -s -r -p "installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
clear

echo "restarting shell..."
exec zsh

