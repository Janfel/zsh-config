# Directory Stack Manipulation
# Sourced from OMZ's lib/dirs.zsh.

alias d1='cd -'
alias d2='cd -2'
alias d3='cd -3'
alias d4='cd -4'
alias d5='cd -5'
alias d6='cd -6'
alias d7='cd -7'
alias d8='cd -8'
alias d9='cd -9'

function ds() {
	if [[ -n $1 ]]; then
		builtin dirs $@
	else
		builtin dirs -v | head -10
	fi
}
compdef _dirs ds
