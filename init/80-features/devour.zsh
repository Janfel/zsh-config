# Window Swallowing
###if (($+commands[xdo]))

# Stolen from https://github.com/salman-abedin/devour.
function devour() {
	: 'WM agnostic window swallowing using xdo.'
	local id=$(xdo id)
	xdo hide $id
	($* >/dev/null 2>&1)
	xdo show $id
}
compdef _command devour
