#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \w]\$ '
PS1='\[\e[0;34m\][\u@\h \w]$\[\e[0;39m\] '

#ALIAS
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias bashrc='nvim ~/.bashrc && source ~/.bashrc'
alias archwiki='wikiman -s arch'
alias fman='compgen -c | fzf | xargs man'
alias tree='tree -C'
alias gitree='tree -I ".git" -a .'
alias cal='cal -m'

alias smart='~/Documents/smart'

#BLUETOOTH
alias btctl='bluetoothctl'
alias JBL-GO-4='~/Public/bluetooth/JBL-GO-4.sh'
alias ULT-WEAR='~/Public/bluetooth/ULT-WEAR.sh'
alias GALAXY-BUDS2-PRO='~/Public/bluetooth/GALAXY-BUDS2-PRO.sh'

#HYPRLAND
alias hyprconfig='nvim ~/.config/hypr/hyprland.lua'
alias hyprmonitor='nvim ~/.config/hypr/hyprsrc/monitor.lua'
alias hyprenv='nvim ~/.config/hypr/hyprsrc/enviroment.lua'
alias hyprprog='nvim ~/.config/hypr/hyprsrc/programs.lua'
alias hyprworkspaces='nvim ~/.config/hypr/hyprsrc/workspaces.lua'
alias hyprkey='nvim ~/.config/hypr/hyprsrc/keybinds.lua'
alias hyprkill='hyprctl kill'

#SKRIPTE

#FuzzyJump

fcd() {
    local cur_dir="."
    local out key sel target

    while true; do
        local prompt_path
        prompt_path=$(cd "$cur_dir" 2>/dev/null && pwd) || prompt_path="$cur_dir"

        out=$(
            (
                cd "$cur_dir" 2>/dev/null || return
                ls -A --color=always 2>/dev/null
            ) | fzf \
                --ansi \
                --bind="right:accept" \
                --expect=tab,right,left \
                --prompt="${prompt_path}/ > " \
                --header="[→ / Tab] Ordner öffnen | [←] Hoch | [Enter] Jump / Datei ausgeben | [ESC] Ende" \
                --color='bg:237,bg+:236,info:143,border:240,spinner:108' \
                --color='hl:65,fg:252,header:65,fg+:252' \
                --color='pointer:161,marker:168,prompt:110,hl+:108'
                #--style full \
                #--preview 'fzf-preview.sh {}' \
                #--bind 'focus:transform-header:file --brief {}'
        )

        if [[ -z "$out" ]]; then
            return 0
        fi

        key=${out%%$'\n'*}
        sel=${out#*$'\n'}

        if [[ "$sel" == "$key" ]]; then
            sel=""
        fi

        target="$(cd "$cur_dir" 2>/dev/null && printf '%s/%s\n' "$PWD" "$sel")"

        case "$key" in
            tab|right)
                if [[ -n "$sel" && -d "$target" ]]; then
                    cur_dir="$target"
                fi
                ;;

            left)
                if [[ "$cur_dir" != "/" ]]; then
                  cur_dir="$(dirname "$cur_dir")"
                fi
                ;;

            "")
            if [[ -n "$sel" ]]; then
            target="$cur_dir/$sel"

            if [[ -f "$target" ]]; then
            nvim "$target"
            else
              cd "$cur_dir" || return 1
            fi
            else
              cd "$cur_dir" || return 1
            fi
            return 0
            ;;
        esac
    done
}

# Created by `pipx` on 2026-07-06 20:07:05
export PATH="$PATH:/home/jan/.local/bin"
