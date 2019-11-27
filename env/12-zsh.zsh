# ZSH Configuration

# Custom zsh help files.
export HELPDIR="$XDG_DATA_HOME/zsh/help"

# Setting this manually, else OMZ overrides it.
export HISTFILE="$XDG_DATA_HOME/zsh/history"

# USR1: Rehash completions
# This lets pacman send USR1 for zsh to rehash.
trap 'rehash' USR1
