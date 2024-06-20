# These must be set explicitly, else OMZ will override them.

HISTFILE="$XDG_DATA_HOME/zsh/history"
HISTSIZE=50000
SAVEHIST=40000

# Create history directory if necessary.
# If this doesn’t exist, Zsh won’t save any history at all.
mkdir -p ${HISTFILE:h}
