# Created by philip-tk for 5.7.1

# Activate vi-mode with <Esc>:
bindkey -v
export KEYTIMEOUT=1

PS1="[%n@%B%F{81}%m %b%f%~]$ "

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files


############################
###### COMMON ALIASES ######
#############################

alias q='exit'
alias c='clear'
alias la='ls -a'
alias cs='clear; ls'
alias ca='clear; ls -a'
alias v='vim'

# This line enables auto-jump functionality.
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh]]

# This line enables syntax highlighting in zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
