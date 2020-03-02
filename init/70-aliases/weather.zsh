# Weather

function wttr() {
	: 'Prints the weather using wttr.in.'
	local cities=($*)
	if ((!$#cities)); then
		cities=('Itzehoe')
	fi
	curl 2>/dev/null 'https://wttr.in/'$cities
}
