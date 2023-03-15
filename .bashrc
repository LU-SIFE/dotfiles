#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\e[1;93m[\e[1;95m\u ~\e[1;93m]\e[m '
LS_COLORS="$LS_COLORS:di=1;95"
