# Some functions that do more than an alias should.

function mkcd() {
	: 'Create a new directory and cd into it.'
	mkdir -p $@ && cd $1
}

function title() {
	: 'Set the terminal title.'
	printf $'\033]0;%s\007' "$*"
}

function what() {
	: 'Print the file type of a command.'
	local arg
	local args=()
	for param; do
		arg=$commands[$param]
		if [[ -n $arg ]]; then
			args+=$arg
		else
			print -u2 -- "$param not found"
		fi
	done
	file $args
}

function upcase() {
	: 'Convert a string to uppercase using sed.
	This function is Unicode aware.
	'
	function upcase_() { sed 's/.*/\U&/g'; }
	if (($#)); then
		print -l $@ | upcase_
	else
		upcase_
	fi
}

function downcase() {
	: 'Convert a string to lowercase using sed.
	This function is Unicode aware.
	'
	function downcase_() { sed 's/.*/\L&/g'; }
	if (($#)); then
		print -l $@ | downcase_
	else
		downcase_
	fi
}

function lines() {
	if [[ $# < 2 ]]; then
		print -u2 "$0: not enough arguments"
		return 1
	fi
	sed -n "${1:-1},${2:-\$}p" $@[3,-1]
}

function linediff() {
	if [[ $# < 5 ]]; then
		print -u2 "$0: not enough arguments"
		return 1
	fi
	diff <(sed -n "${1},${2}p" $5) <(sed -n "${3},${4}p" ${6:-$5})
}
