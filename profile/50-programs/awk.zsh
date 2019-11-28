if (( $#awkpath == 0 )); then
    AWKPATH=$(gawk 'BEGIN {print ENVIRON["AWKPATH"]}')
fi
if (( $#awklibpath == 0 )); then
    AWKLIBPATH=$(gawk 'BEGIN {print ENVIRON["AWKLIBPATH"]}')
fi
