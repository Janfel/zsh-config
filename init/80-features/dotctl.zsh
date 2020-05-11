# Dotfile management using git bare-repos.

if [[ -d $DOTFILES_REPO ]]; then
	alias dotctl="git --git-dir=$DOTFILES_REPO --work-tree=$HOME"
fi
