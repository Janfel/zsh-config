# Remove alias to man
unalias run-help 2> /dev/null

# Load help builtin
autoload -Uz run-help

# Load extensions
autoload -Uz run-help-git
autoload -Uz run-help-ip
autoload -Uz run-help-openssl
autoload -Uz run-help-sudo

alias help=run-help
