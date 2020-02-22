neofetch

# If not running interactively, Don't do anything :)
[[ $- != *i* ]] && return

[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"

_comp_options+=(globdots)

export KEYTIMEOUT=1

echo -ne '\e[5 q'
preexec() { echo -ne '\e[5 q' ;}

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

#####[Urxvt] PS1='\e[1;91m[\e[m\e[1;33mlidan\e[m\e[1;92m@\e[m\e[1;94mart\e[m \e[1;95m~\e[m\e[1;91m]\e[m\$ '

PS1='\e[1;31m[\e[m\e[1;33mlidan\e[m\e[1;32m@\e[m\e[1;34mart\e[m \e[1;95m~\e[m\e[1;31m]\e[m\$ '

set -o vi

export PROMPT_COMMAND="notify-send 'Important Notice' 'Void is BEST'"
