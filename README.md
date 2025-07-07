```bash

 _____     ______     ______   ______   __     __         ______     ______    
/\  __-.  /\  __ \   /\__  _\ /\  ___\ /\ \   /\ \       /\  ___\   /\  ___\   
\ \ \/\ \ \ \ \/\ \  \/_/\ \/ \ \  __\ \ \ \  \ \ \____  \ \  __\   \ \___  \  
 \ \____-  \ \_____\    \ \_\  \ \_\    \ \_\  \ \_____\  \ \_____\  \/\_____\ 
  \/____/   \/_____/     \/_/   \/_/     \/_/   \/_____/   \/_____/   \/_____/ 
                                                                               
```

```bash
git clone https://github.com/username/repo.git
cd repo

# make sure brew's installed (on macos but works for linux too)
# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# make sure to have nvim, ripgrep, starship, fastfetch, omz, py & pip, unzip installed
# ^ no need for that if on macos w brew
chmod +x ./install.zsh
./install.sh

# if on macos
chmod +x ./macos.sh
./macos.sh
```
