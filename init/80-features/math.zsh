# Math Functions

function average() {
	: 'Calculate the integer average of $* or stdin.'
	local nums+=($*)
	(($#nums)) || nums+=($(</dev/stdin))
	local dc_prog='? zsn [+ z 2 <c] dsc x ln / p'
	printf '%s ' $nums | dc -e $dc_prog
}
