# Old 3
unalias run-help 2> /dev/null # Remove alias to man
autoload -Uz run-help # Load help builtin
autoload -Uz run-help-git # Load extensions
autoload -Uz run-help-ip
autoload -Uz run-help-openssl
autoload -Uz run-help-sudo
alias help=run-help
