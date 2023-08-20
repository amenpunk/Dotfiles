#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ls='lsd --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\[\e[0;3;97;48;5;63m\] λ \W > \[\e[0m\] '
set -o vi
export EDITOR=vim
alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"
