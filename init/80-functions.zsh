edit() { "${VISUAL:-${$EDITOR:-"/usr/bin/nano"}}" "$@" }
alias ed=edit

mkcd() { mkdir -p "$@" && cd "$1" }

update_zsh() { (cd $ZDOTDIR && doit compile) }

upgrade_zsh() { (cd $ZDOTDIR && doit compile update) }

whose() { /usr/bin/yay --files --owns "/usr/bin/$@" }

