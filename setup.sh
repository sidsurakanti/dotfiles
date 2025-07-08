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

# https://docs.github.com/en/authentication/connecting-to-github-with-ssh
read -p "would you like to add github ssh? (y/n): " answer
if [ "$answer" = "yes" ]; then
  read -p "please enter the email you use for your github account: " user_email
  ssh-keygen -t ed25519 -C "$user_email"
  cat ~/.ssh/id_ed25519.pub
  echo "please add the following key to github ssh"
elif [ "$answer" = "no" ]; then
  echo "canceled."
else
  echo "invalid input."
fi

echo "cloning dotfiles"
git clone https://github.com/sidsurakanti/.dotfiles.git
cd .dotfiles
chmod +x ./install.zsh
./install.zsh

# install linuxbrew (you don't have to)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo apt-get install build-essential

echo "installing gcc neovim starship fastfetch ripgrep unzip"
brew install gcc neovim starship fastfetch ripgrep unzip tree

echo "installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

echo "restarting shell..."
exec zsh

