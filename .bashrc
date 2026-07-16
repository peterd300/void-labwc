# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la'
alias df='df -h'
alias nano='nano -l'


PS1='[\u@\h \W]\$ '
