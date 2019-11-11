# Changes into a new directory
mkcd() { mkdir -p "$@" && cd "$1" }

# Recompiles the zsh configuration
update_zsh() { $ZDOTDIR/zsh-cfg bundle compile }

# Recompiles the zsh configuration and updates the cached packages
upgrade_zsh() { $ZDOTDIR/zsh-cfg bundle compile update }

# Finds the package that owns a certain executable
whose() { /usr/bin/yay --query --owns "/usr/bin/$@" }

# Converts to Upper/Lowercase (unicode aware)
upcase() { /usr/bin/sed 's/.*/\U&/g' }
downcase() { /usr/bin/sed 's/.*/\L&/g' }
