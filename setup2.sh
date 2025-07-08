echo "running setup pt2"

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

