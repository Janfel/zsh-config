# GNU AWK

# Initialize the gawk paths, so they don't have to be recomputed every time.
if (( $#awkpath == 0 )); then
    AWKPATH=$(gawk 'BEGIN {print ENVIRON["AWKPATH"]}')
fi
if (( $#awklibpath == 0 )); then
    AWKLIBPATH=$(gawk 'BEGIN {print ENVIRON["AWKLIBPATH"]}')
fi
