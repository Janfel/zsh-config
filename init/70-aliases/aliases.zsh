# Zsh aliases.

# Miscellaneous aliases.

alias sudo='sudo '
alias open=kde-open5
alias o=kde-open5

alias cp='cp -i'
alias diff='diff --color=auto'
alias du='du -h'
alias println='print -l'

alias mi=micro
alias nv=nvim

alias sh='rlwrap sh'

# Directory aliases.
# Sourced from OMZ's lib/dirs.zsh.

alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir

d() {
    if [[ -n $1 ]]; then
        builtin dirs "$@"
    else
        builtin dirs -v | head -10
    fi
}
compdef _dirs d
