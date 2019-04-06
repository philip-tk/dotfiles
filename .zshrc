# Created by philip-tk for 5.7.1

# Activate vi-mode with <Esc>:
bindkey -v

# Common aliases that I use
alias q='exit'
alias c='clear'
alias la='ls -a'
alias cs='clear; ls'
alias ca='clear; ls -a'
alias tmux="TERM=screen-256color-bce tmux"

#Completion for autojump package
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Stuff related to the todo.txt CLI.
alias t='~/todo/todo.sh -d ~/todo/todo.cfg' 
