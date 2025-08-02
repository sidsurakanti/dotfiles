```bash

 _____     ______     ______   ______   __     __         ______     ______    
/\  __-.  /\  __ \   /\__  _\ /\  ___\ /\ \   /\ \       /\  ___\   /\  ___\   
\ \ \/\ \ \ \ \/\ \  \/_/\ \/ \ \  __\ \ \ \  \ \ \____  \ \  __\   \ \___  \  
 \ \____-  \ \_____\    \ \_\  \ \_\    \ \_\  \ \_____\  \ \_____\  \/\_____\ 
  \/____/   \/_____/     \/_/   \/_/     \/_/   \/_____/   \/_____/   \/_____/ 
                                                                               
```
Clone repo
```bash
git clone https://github.com/sidsurakanti/dotfiles.git
cd dotfiles
```
If setting up linux/wsl machine for the first time: 
```bash
chmod +x ./setup.sh
./setup.sh
# >>> are you resuming after oh my zsh install? (y/n):

# don't forget to run it again after pt1 finishes
```
Just dotfiles:
```bash
# make sure brew's installed (on macos but works for linux too)
# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# make sure to have nvim, ripgrep, starship, fastfetch, omz, py & pip, unzip, nvm installed
# ^ no need for that if on macos w brew
chmod +x ./install.zsh
./install.zsh

# if on macos
chmod +x ./macos.sh
./macos.sh
```
