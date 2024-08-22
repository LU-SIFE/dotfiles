# ~/.bashrc

# interactivity
[[ $- != *i* ]] && return

# Add custom bin files to path
export PATH="~/bin:$PATH"

# Set neovim as the default editor
export EDITOR='nvim'
export VISUAL='nvim'

# Alias some stuff
alias cmatrix='cmatrix -C magenta'
alias tclock='tclock -c=magenta'
alias ls='ls --color=auto'
alias ip='ip -c'
alias grep='grep --color=auto'
alias clera='clear'
alias why='nvim ~/.config/hypr/hyprland.conf'
alias work='cd ~/Projects'
alias kb='cd ~/Projects/kb'

# Custom sudo prompt
export SUDO_PROMPT=$(echo -e '\033[1m\033[38;5;219m[sudo] \e[0mEnter Password: ')

# Custom prompt
PS1='\033[1m\033[38;5;219m[ > ]\e[0m '
