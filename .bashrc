#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd --color=auto'
# PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
set -o vi
export EDITOR=nvim
alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"
