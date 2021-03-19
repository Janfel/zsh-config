#!/usr/bin/env -S gawk -f

BEGIN { zsh = "zsh" }

BEGINFILE {
	if (FILENAME ~ /\.zshx$/) {
		system(FILENAME)
		nextfile
	}
	ignore = 0
	elif_done = 0
}

function zsh_eval(command) {
	print command    |& zsh
	print "print $?" |& zsh
	zsh |& getline err
	return !err
}

/^###if/ {
	if (ignore) ignore++
	else ignore = !zsh_eval(substr($0, 7))
}

/^###elif/ && ignore < 2 {
	if (!ignore) elif_done = 1
	ignore = elif_done || !zsh_eval(substr($0, 9))
}

/^###else/ && ignore < 2 {
	if (!ignore) elif_done = 1
	ignore = elif_done
}

/^###endif/ {
	if (ignore) ignore--
	if (!ignore) elif_done = 0
}

# Match any line that is not empty and not a comment.
!/^\s*(#|$)/ && !ignore { print }

END { close(zsh) }
