#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias fch="clear && echo && hyfetch"
alias ls='ls --color=auto'
alias clera="clear"
alias cmatrix="cmatrix -sC magenta"
alias tclock="tclock -c magenta"
alias ai="openai-cli --api-key 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"
alias nv="neovide"
eval "$(thefuck --alias)"
PS1='\e[1;93m[\e[1;95m\u ~\e[1;93m]\e[m '
LS_COLORS="$LS_COLORS:di=1;95"
export VISUAL=nvim
export EDITOR=nvim
PATH=$PATH:~/.config/emacs/bin
PATH=$PATH:~/bin
PATH=$PATH:~/.config/nvim/bin
clear
