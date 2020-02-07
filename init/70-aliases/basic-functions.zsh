# Some functions that do more than an alias should.

mkcd() {
    : 'Create a new directory and cd into it.'
    mkdir -p $@ && cd $1
}

what() {
    : 'Print the file type of a command.'
    local arg
    local args=()
    for param ; do
        arg=$commands[$param]
        if [[ -n $arg ]] ; then
            args+=$arg
        else
            print -u2 -- "$param not found"
        fi
    done
    file $args
}

whose() {
    : 'Show the package that a command belongs to.'
    pacman --query --owns $@
}

upcase() {
    : '
    Convert a string to uppercase using sed.
    This function is Unicode aware.
    '
    _upcase() { sed 's/.*/\U&/g' }
    if (( $# )) ; then
        print -l $@ | _upcase
    else
        _upcase
    fi
}

downcase() {
    : '
    Convert a string to lowercase using sed.
    This function is Unicode aware.
    '
    _downcase() { sed 's/.*/\L&/g' }
    if (( $# )) ; then
        print -l $@ | _downcase
    else
        _downcase
    fi
}
