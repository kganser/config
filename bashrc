# If not running interactively, don't do anything
test -z "$PS1" && return

# Static ssh agent socket symlink for tmux
SOCK="/tmp/ssh-agent-$USER"
test -n "$SSH_AUTH_SOCK" -a "$SSH_AUTH_SOCK" != "$SOCK" && ln -sf $SSH_AUTH_SOCK $SOCK && export SSH_AUTH_SOCK=$SOCK

HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize

export FIGNORE='.svn:.git'
export PATH="$HOME/bin/:$PATH"
export PS1='\$ '

# http://www.shellperson.net/using-sudo-with-an-alias/
alias sudo='sudo '
alias untar='tar zxvf'

# Enable ls color support
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

