# If not running interactively, don't do anything
[[ $- != *i* ]] && return

setopt noclobber
setopt prompt_subst

# Enable colors and change prompt:
autoload -U colors && colors

# ==== Prompt + Git ====
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
# RPROMPT=\$vcs_info_msg_0_  Put git in the right side
# zstyle ':vcs_info:git:*' formats '%F{blue}(%b)%r%f'  Former format(right)
zstyle ':vcs_info:git:*' formats '%F{white} (%f%F{cyan}%f %F{red}%b%u%c%f%F{white})%f'
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' ~'
zstyle ':vcs_info:*' stagedstr ' √'

PROMPT='%B%F{yellow}%n%f %F{blue}%1~$vcs_info_msg_0_%f%b $ '
# PROMPT='%B%F{red}%n%f %F{blue}%1~%f%b >> '    Former promp(right)
# ----------------------------------------------------

# ==== Basic auto/tab complete ====
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# ==== Enable vi mode ====
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
# Fix backspace bug when switching modes
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Enable searching through history
bindkey '^R' history-incremental-pattern-search-backward

# Source configs
for f in ~/.config/zsh/*; do source "$f"; done

# Zsh syntax hl
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
