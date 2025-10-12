#!/bin/bash

set -e

pause() {
  read -n 1 -s -r -p "$1"
  echo
}

read -p "are you resuming after oh my zsh install? (y/n): " resumed

if [ "$resumed" != "y" ]; then
  pause "press any key to start setup script..."

  pause "updating apt... (enter to continue)"
  sudo apt update && sudo apt upgrade -y
  sudo apt autoremove -y
  clear

  pause "installing zsh shell... (enter to continue)"
  sudo apt install -y zsh
  clear

  echo "setting default shell as zsh (enter to continue)"
  chsh -s "$(which zsh)"
  echo "will restart shell at the end of script (enter to continue)"

  # https://github.com/ohmyzsh/ohmyzsh
  pause "downloading oh my zsh... (enter to continue)"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  clear
fi

# GH SSH setup
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh
read -p "would you like to add github ssh? (y/n): " answer

if [ "$answer" = "y" ]; then
  read -p "please enter the email you use for your github account: " user_email
  ssh-keygen -t ed25519 -C "$user_email"
  clear
  cat ~/.ssh/id_ed25519.pub
  pause "please add the following key to github ssh"
elif [ "$answer" = "n" ]; then
  echo "canceled."
else
  echo "invalid input."
fi

clear

pause "syncing dotfiles... (enter to continue)"
cd ~/dotfiles || { echo "dotfiles not found"; exit 1; }
chmod +x ./install.zsh
./install.zsh

pause "installing linuxbrew... (enter to continue)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo apt-get install -y build-essential
clear

echo "setting up brew env... (enter to continue)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# TODO: UPDATE THIS TO SUDO APT
pause "installing useful packages... (enter to continue)"
brew install gcc cmake neovim starship fastfetch ripgrep unzip tree cowsay lolcat git-lfs
clear

pause "installing nvm... (enter to continue)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
clear

echo "restarting shell... (enter to continue)"
exec zsh
