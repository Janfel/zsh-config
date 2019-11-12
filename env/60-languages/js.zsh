#typeset -xUT NODE_OPTIONS node_options ' '
export NODE_REPL_HISTORY="$XDG_DATA_HOME/nodejs/history"

export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npm.conf"
#export NPM_CONFIG_PREFIX="$XDG_DATA_HOME/npm"
export NPM_CONFIG_PREFIX="$XDG_USER_BASE"

typeset -xUT NODE_PATH node_path
node_path=(
    '/usr/lib/node_modules'
    '/usr/local/lib/node_modules'
    $node_path
    "$XDG_USER_BASE/lib/node_modules"
    "$NPM_CONFIG_PREFIX/lib/node_modules"
)
