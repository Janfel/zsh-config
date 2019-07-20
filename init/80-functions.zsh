edit() { "${VISUAL:-${$EDITOR:-"/usr/bin/nano"}}" "$@" }
alias ed=edit

mkcd() { mkdir -p "$@" && cd "$1" }

update_zsh() { $ZDOTDIR/zsh-cfg bundle compile }

upgrade_zsh() { update_zsh && antibody update }

whose() { /usr/bin/yay --files --owns "/usr/bin/$@" }

