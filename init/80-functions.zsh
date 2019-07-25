# Changes into a new directory
mkcd() { mkdir -p "$@" && cd "$1" }

# Recompiles the zsh configuration
update_zsh() { $ZDOTDIR/zsh-cfg bundle compile }

# Recompiles the zsh configuration and updates the cached packages
upgrade_zsh() { $ZDOTDIR/zsh-cfg bundle compile update }

# Finds the package that owns a certain executable
whose() { /usr/bin/yay --files --owns "/usr/bin/$@" }
