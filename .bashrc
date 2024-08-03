# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add custom bin files to path
export PATH="~/bin:$PATH"

# Set neovim as the default editor
export EDITOR='nvim'
export VISUAL='nvim'

# Alias some stuff
alias cmatrix='cmatrix -C magenta'
alias clock='tclock -c=#9D00FF'
alias ls='ls --color=auto'
alias ip='ip -c'
alias grep='grep --color=auto'
alias clera='clear'

# Custom sudo prompt
export SUDO_PROMPT=$(echo -e '\033[1m\033[38;5;219m[sudo] \e[0mEnter Password: ')

# Custom prompt
PS1='\033[1m\033[38;5;219m[ > ]\e[0m '
