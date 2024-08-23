# Dotfile management using git bare-repos.

alias dotctl='git --git-dir=${DOTFILES_REPO:-"$XDG_DATA_HOME/dotfiles"} --work-tree=$HOME'
