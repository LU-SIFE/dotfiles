# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#add custom bin files to path
export PATH="/home/michael/bin:$PATH"

alias clock='tclock -c=#9D00FF'
alias ls='ls --color=auto -a'
alias ip='ip -c'
alias grep='grep --color=auto'
alias clera='clear'

PS1='[ > ] '
