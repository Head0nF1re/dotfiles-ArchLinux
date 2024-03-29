typeset -U PATH path

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}

export LESSHISTFILE=-

export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export PAGER="less"
export READER="evince"
export WM="i3"

export RANGER_LOAD_DEFAULT_RC="FALSE"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Path
path=("$HOME/.local/bin" "$HOME/.local/bin/i3blocks"
    "$HOME/.local/bin/flutter_package/bin" "$HOME/.dotnet/tools" "$path[@]")
export PATH

#### https://invisible-island.net/ncurses/man/terminfo.5.html#h3-Predefined-Capabilities
#### https://invisible-island.net/ncurses/man/terminfo.5.html#h3-Color-Handling
# Start blinking
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
# Start bold
export LESS_TERMCAP_md=$(tput bold; tput setaf 2) # green
# Start stand out
export LESS_TERMCAP_so=$(tput bold; tput setab 3; tput setaf 0) # yellow; black
# End standout
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# Start underline
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 1) # red
# End Underline
export LESS_TERMCAP_ue=$(tput sgr0)
# End bold, blinking, standout, underline
export LESS_TERMCAP_me=$(tput sgr0)
