#!/usr/bin/env -S gawk -f

BEGIN { zsh = "zsh" }

BEGINFILE {
	if (FILENAME ~ /\.zshx$/) {
		system(FILENAME)
		nextfile
	}
	ignore = 0
}

/^###if / {
	if (ignore) { ignore++ }
	else {
		print substr($0, 7) |& zsh
		print "print $?"    |& zsh
		zsh |& getline err
		if (err) ignore++
	}
}

/^###else/  && ignore < 2 { ignore = !ignore }
/^###endif/ && ignore { ignore-- }

# Match any line that is not empty and not a comment.
!/^\s*(#|$)/ && !ignore { print }

END { close(zsh) }
