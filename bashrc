#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first -h'
PS1='[\u@\h \W]\$ '

. ~/.aliases
export PATH=$PATH:$HOME/.config/composer/vendor/bin
