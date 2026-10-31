#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \w]\$ '
PS1='\n\[\e[0;34m\][\u@\h \w]$\[\e[0;39m\] '

#ALIAS
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias bashrc='nvim ~/.bashrc && source ~/.bashrc'
alias archwiki='wikiman -s arch'
alias fman='compgen -c | fzf | xargs man'
alias tree='tree -C'
alias gitree='tree -I ".git" -a .'
alias cal='cal -m'
alias btctl='bluetoothctl'

#HYPRLAND
alias hyprconfig='nvim ~/.config/hypr/hyprland.lua'
alias hyprmonitors='nvim ~/.config/hypr/hyprsrc/monitors.lua'
alias hyprenv='nvim ~/.config/hypr/hyprsrc/enviroment.lua'
alias hyprprog='nvim ~/.config/hypr/hyprsrc/programs.lua'
alias hyprworkspaces='nvim ~/.config/hypr/hyprsrc/workspaces.lua'
alias hyprkey='nvim ~/.config/hypr/hyprsrc/keybinds.lua'
alias hyprkill='hyprctl kill'

# Created by `pipx` on 2026-07-06 20:07:05
export PATH="$PATH:/home/jan/.local/bin"

export PATH="/home/jan/.local/stm32cube/bin:$PATH"
