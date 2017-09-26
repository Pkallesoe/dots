#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first -h'
PS1='[\u@\h \W]\$ '

. ~/.aliases
export PATH=$PATH:$HOME/.config/composer/vendor/bin

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

function calc
{
      echo "${1}" | bc -l;
}

if [ -n "$DISPLAY" ]; then
    export BROWSER=qutebrowser
else
    export BROWSER=links
fi

export DE=xfce
