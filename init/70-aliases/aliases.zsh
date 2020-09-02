# Zsh aliases.

alias sudo='sudo '
alias open=kde-open5
alias o=kde-open5

# Safety
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

alias diff='diff --color=auto'
alias du='du -h'
alias hd='hexdump -C'
alias ls='ls --color=auto'
alias println='print -l'
alias whose='pacman --query --owns'

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

function d() {
	if [[ -n $1 ]]; then
		builtin dirs $@
	else
		builtin dirs -v | head -10
	fi
}
compdef _dirs d
