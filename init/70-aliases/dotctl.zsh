# dotctl

function dotctl() {
	: 'Version control dotfiles.'
	${GIT_COMMAND:-git}      \
	--git-dir=$DOTFILES_REPO \
	--work-tree=$HOME        \
	$@
}
