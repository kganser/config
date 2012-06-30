# If not running interactively, don't do anything
test -z "$PS1" && return

# Enter tmux
which tmux && { test -n "$TMUX" || tmux at || tmux; }

HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize

export FIGNORE='.svn:.git'
export PATH="$HOME/bin/:$PATH"
export PS1='\$ '

# http://www.shellperson.net/using-sudo-with-an-alias/
alias sudo='sudo '

# Enable ls color support
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

