alias python=python3

alias brewdir="cd /opt/homebrew/bin"
alias nvimdir="cd ~/.config/nvim"
alias v="nvim"
alias t="tmux"

alias fman="bash -c 'compgen -c' | fzf | bash -c 'xargs man'"
alias ls="eza"
alias ll="eza -l"
alias la="eza -la"

alias gs="git status -sb $@"
alias gcm="git commit -ev $@"
alias ga="git add --all $@"
alias gt="git log --graph --oneline --decorate $@"
alias gps="git push $@"
alias gpl="git pull $@"
alias gf="git fetch $@"
alias gco="git checkout $@"
alias lg='lazygit'

# Status line to show full path from home directory
PROMPT='%~ %% '

# Enable auto-completion
autoload -Uz compinit && compinit

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Homebrew
export PATH=/opt/homebrew/bin:$PATH

# Mason
export PATH="~/.local/share/nvim/mason:$PATH"

# Open man page in Neovim when running the man command
export MANPAGER="nvim +Man!"

# ESP32 development-related
# Remember to remove export and alias when no longer doing ESP32 development
export IDF_TOOLS_PATH="$HOME/Dev/esp/.espressif"
alias idf-bringup=". $HOME/Dev/esp/esp-idf/export.sh"

alias fp='nvim $(fzf -m --preview="bat --color=always {}")'
source <(fzf --zsh)

