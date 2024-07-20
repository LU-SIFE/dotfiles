#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#add custom bin files to path
export PATH="/home/michael/bin:$PATH"

alias ls='ls --color=auto -a'
alias grep='grep --color=auto'
alias clera='clear'

PS1='[ > ] '
