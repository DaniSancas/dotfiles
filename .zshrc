# ZSH config

# First of all, load Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Antigen (zsh plugin and theme manager)
source ~/.antigenrc

# Use Ctrl+u to delete from cursor to beginning of line
bindkey \^U backward-kill-line

## FZF options
export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude .git --exclude .idea"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND --type f"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"
export FZF_CTRL_T_OPTS=" --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

# Aliases
alias ls="lsd"
alias ll="ls -la"
alias lah="ls -lah"
alias lt="ls --tree"

alias vim="nvim"
alias nv="nvim"

alias lg="lazygit"


# Shell integrations
# FZF
source <(fzf --zsh)
# Starship shell
eval "$(starship init zsh)"

