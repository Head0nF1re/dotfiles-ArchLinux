[[ -f ~/.bashrc ]] && . ~/.bashrc

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

export PATH="$PATH:$HOME/.local/bin:$HOME/.local/bin/i3blocks"

# Terminal Colors
export CLICOLOR=1
# export LS_COLORS

export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export PAGER="less"
export READER="evince"
export WM="i3"

export RANGER_LOAD_DEFAULT_RC="FALSE"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi
