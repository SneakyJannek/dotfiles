#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#bind '"\t": menu-complete'
bind '"\e[1;5B": beginning-of-line'
bind '"\e[1;5A": end-of-line'

#ALIAS
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias bashrc='nvim ~/.bashrc && source ~/.bashrc'
alias archwiki='wikiman -s arch'
alias fman='compgen -c | fzf | xargs man'
alias tree='tree -C'
alias gitree='tree -I ".git" -a .'
alias btctl='bluetoothctl'

#HYPRLAND
alias hyprconfig='nvim ~/.config/hypr/hyprland.conf'

PS1='[\u@\h \W]\$ '
