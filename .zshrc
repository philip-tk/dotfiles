# Created by philip-tk for 5.7.1

# Activate vi-mode with <Esc>:
bindkey -v

# Extended globbing
setopt extendedglob

# Enable history completion with Ctrl-J:
autoload -Uz history-beginning-search-menu
zle -N history-beginning-search-menu
bindkey '^N' history-beginning-search-menu

# Enable reverse-i-search with Ctrl-R:
bindkey '^R' history-incremental-pattern-search-backward
export KEYTIMEOUT=1

# Setting the Command Prompt:
PS1="[%n@%B%F{81}%m %b%f%~]$ "

# Add Local scripts to $PATH
PATH="$HOME/.local/bin:${PATH}"
export PATH

# History in cashe directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files

# Use Vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

############################
###### COMMON ALIASES ######
#############################

alias q='exit'
alias c='clear'
alias la='ls -a'
alias ll="ls -la"
alias cs='clear; ls'
alias ca='clear; ls -a'
alias cl='clear; ls -la'
alias v='vim'

# Git Aliases
alias gs='git status'
alias gd='git diff'
alias gl='git log --decorate --all --graph'
alias glo='git log --oneline --decorate --all --graph'

# SETTING DEFAULTS
export EDITOR="vim"
export BROWSER="firefox"

# Start X after logon
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec startx
fi

# Autojump setup
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

# This line enables syntax highlighting in zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
