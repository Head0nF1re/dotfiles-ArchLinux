# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o noclobber

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# GIT FUNCTIONS
git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Terminal prompt
PS0="\n"

# PS1='[\u@\h \W]\$ '   Defaul prompt
PS1="\[\e[0;93m\]\u\[\e[m\]" # username
PS1+=" " # space
PS1+="\[\e[0;95m\]\W\[\e[m\]" # current directory
PS1+="\[\e[0;92m\]\$(git_branch)\[\e[m\]" # current branch
PS1+=" " # space
PS1+="\$ " # end prompt

PS2='> '
