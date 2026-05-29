#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \w]\$ '
PS1='\[\e[0;34m\][\u@\h \w]$\[\e[0;39m\] '

#bind '"\t": menu-complete'
bind '"\e[1;5A": beginning-of-line'
bind '"\e[1;5B": end-of-line'

#ALIAS
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias bashrc='nvim ~/.bashrc && source ~/.bashrc'
alias archwiki='wikiman -s arch'
alias fman='compgen -c | fzf | xargs man'
alias tree='tree -C'
alias gitree='tree -I ".git" -a .'
alias cal='cal -m'

#BLUETOOTH
alias btctl='bluetoothctl'
alias JBL-GO-4='~/Public/bluetooth/JBL-GO-4.sh'
alias ULT-WEAR='~/Public/bluetooth/ULT-WEAR.sh'
alias GALAXY-BUDS2-PRO='~/Public/bluetooth/GALAXY-BUDS2-PRO.sh'

#HYPRLAND
alias hyprconfig='nvim ~/.config/hypr/hyprland.conf'
alias hyprkill='hyprctl kill'


