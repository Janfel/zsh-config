# Ensure the XDG variables are initialized.

# This is a custom variable following the XDG naming scheme.
# It defines the prefix used for the user-local file system hierarchy.
export XDG_USER_BASE=${XDG_USER_BASE:-"$HOME/.local"}

# The XDG variables are defined in terms of $XDG_USER_BASE.

# This is a custom variable that is used by ‘ghcup’.
# It defines where to install local binaries.
export XDG_BIN_HOME=${XDG_BIN_HOME:-"$XDG_USER_BASE/bin"}

export XDG_CACHE_HOME=${XDG_CACHE_HOME:-"$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-"$HOME/.config"}
export XDG_DATA_HOME=${XDG_DATA_HOME:-"$XDG_USER_BASE/share"}
export XDG_STATE_HOME=${XDG_STATE_HOME:-"$XDG_USER_BASE/state"}

export XDG_CONFIG_DIRS=${XDG_CONFIG_DIRS:-"/etc/xdg"}
export XDG_DATA_DIRS=${XDG_DATA_DIRS:-"/usr/local/share:/usr/share"}

# Add $XDG_BIN_HOME to $PATH.
# We remove it first in case it was added earlier.
path=(${path:#"$XDG_BIN_HOME"} $XDG_BIN_HOME)
