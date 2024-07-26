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

# Custom Sudo prompt
export SUDO_PROMPT=$(echo -e '\033[1m\033[38;5;219m[sudo] \e[0mEnter Password: ')


PS1='\033[1m\033[38;5;219m[ > ]\e[0m '
