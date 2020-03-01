# Node.js

# Change NPM config file location.
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npm.conf"

# Install NPM packages into ~/.local.
# This only really works with npm.
export NPM_CONFIG_PREFIX="$XDG_USER_BASE"
#export NPM_CONFIG_PREFIX="$XDG_DATA_HOME/npm"

# Change REPL history file location.
export NODE_REPL_HISTORY="$XDG_DATA_HOME/nodejs/history"

node_path=(
	'/usr/lib/node_modules'
	'/usr/local/lib/node_modules'
	$node_path
	"$XDG_USER_BASE/lib/node_modules"
	"$NPM_CONFIG_PREFIX/lib/node_modules"
)

#path+=(
#	$((( $+commands[yarn] )) && yarn global bin || echo $XDG_DATA_HOME/yarn/bin)
#	$XDG_DATA_HOME/yarn/bin
#	$NPM_CONFIG_PREFIX/bin
#)
