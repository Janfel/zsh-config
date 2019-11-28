typeset -xUT AWKPATH awkpath
awkpath=()
AWKPATH=$(gawk 'BEGIN {print ENVIRON["AWKPATH"]}')

typeset -xUT AWKLIBPATH awklibpath
awklibpath=()
AWKLIBPATH=$(gawk 'BEGIN {print ENVIRON["AWKLIBPATH"]}')
