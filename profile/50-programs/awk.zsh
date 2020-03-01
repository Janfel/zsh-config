# GNU AWK

# Initialize the gawk paths, so they don't have to be recomputed every time.
if ((!$#awkpath)); then
	AWKPATH=$(gawk 'BEGIN {print ENVIRON["AWKPATH"]}')
fi
if ((!$#awklibpath)); then
	AWKLIBPATH=$(gawk 'BEGIN {print ENVIRON["AWKLIBPATH"]}')
fi
