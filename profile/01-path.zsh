# Initialize $PATH.

path=(
	$HOME/bin
	$HOME/opt/bin
	#/usr/local/sbin
	#/usr/local/bin
	#/usr/bin
	$path
)

# Make sure ‘$MANPATH’ is prefixed by a colon, so ‘man-db’ is
# still used to compute the effective ‘$MANPATH’ dynamically.
manpath=('')
