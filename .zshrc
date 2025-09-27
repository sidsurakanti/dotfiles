if [ -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$HOME/Library/Python/3.9/bin:/usr/local/cuda-12.9/bin:$PATH"
export LIBRARY_PATH="/usr/local/cuda-12.9/lib64:$LD_LIBRARY_PATH"
export LIBRARY_PATH="/usr/local/cuda-12.9/lib64:$LIBRARY_PATH"
export DOTFILES="$HOME/dotfiles"

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13

# ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"
plugins=(git colored-man-pages colorize nvm)

source $ZSH/oh-my-zsh.sh
source "$DOTFILES/aliases.zsh"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"
fastfetch

# bun completions
[ -s "/Users/sidsurakanti/.bun/_bun" ] && source "/Users/sidsurakanti/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
