# Created by philip-tk for 5.7.1

# Activate vi-mode with <Esc>:
bindkey -v

# Remove the problems with locale categories.
export LC_ALL=en_US.UTF-8

############################
###### COMMON ALIASES ######
#############################

alias q='exit'
alias c='clear'
alias la='ls -a'
alias cs='clear; ls'
alias ca='clear; ls -a'
alias tmux="TERM=screen-256color-bce tmux"
alias v='vim'
alias mtner='cd ~/Documents/Coding/ShellScripts/Tools/Maintainer; ./maintainer.sh; cd ~/'

#Completion for autojump package
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Stuff related to the todo.txt CLI.
alias t='~/todo/todo.sh -d ~/todo/todo.cfg' 

# This line enables syntax highlighting in zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
