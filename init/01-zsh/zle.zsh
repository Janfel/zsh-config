# Zsh Line Editor

# Enable automatic quoting when pasting a URL into the terminal.
autoload -Uz bracketed-paste-url-magic
zle -N bracketed-paste bracketed-paste-url-magic
