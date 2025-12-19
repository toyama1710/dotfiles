# ~/.zshrc: zsh configuration file

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS

# Autocompletion
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors ''

# Directory navigation
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

# Prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{purple}%n%f@%F{cyan}%m%f:%F{green}%~%f %F{red}${vcs_info_msg_0_}%f
%F{green}$%f '

# Color support for ls
if [[ -x /usr/bin/dircolors ]]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

# Aliases
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'
alias g++='g++ -std=c++17 -O2 -fsanitize=undefined,address -g -fno-omit-frame-pointer -Wall -Wextra'
alias vim='nvim'

# Add user's private bin directory to PATH if it exists and is not already in PATH
if [[ -d "$HOME/.bin" && ":$PATH:" != *":$HOME/.bin:"* ]]; then
    PATH="$HOME/.bin:$PATH"
fi

# Add sbin directories to PATH
[[ ":$PATH:" != *":/sbin:"* ]] && PATH=$PATH:/sbin
[[ ":$PATH:" != *":/usr/sbin:"* ]] && PATH=$PATH:/usr/sbin

# Less settings
export LESS="-R -i"

# Set capslock to ctrl
setxkbmap -option ctrl:nocaps

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Cargo environment
source "$HOME/.cargo/env"

# cursor-agent
export PATH="$HOME/.local/bin:$PATH"
