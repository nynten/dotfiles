# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias pkgcount='xbps-query -l | wc -l'
PS1='[\u@\h \W]\$ '
