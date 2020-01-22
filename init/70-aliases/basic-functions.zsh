# Changes into a new directory
mkcd() { mkdir -p "$@" && cd "$1" }

# Recompiles the zsh configuration
update_zsh() { $ZDOTDIR/zsh-cfg bundle compile }

# Recompiles the zsh configuration and updates the cached packages
upgrade_zsh() { $ZDOTDIR/zsh-cfg bundle compile update }

# Finds the package that owns a certain executable
whose() { /usr/bin/yay --query --owns $(which $@)}

# Converts to Upper/Lowercase (unicode aware)
upcase() {
    _upcase() { /usr/bin/sed 's/.*/\U&/g' }
    if (( $# )); then
        print -l "$@" | _upcase
    else
        _upcase
    fi
}
downcase() {
    _downcase() { /usr/bin/sed 's/.*/\L&/g' }
    if (( $# )); then
        print -l "$@" | _downcase
    else
        _downcase
    fi
}
