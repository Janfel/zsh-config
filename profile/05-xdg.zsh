# Initialize the XDG variables.

# This is a custom variable following the XDG naming scheme.
# It defines the prefix used for the user-local file system hierarchy.
export XDG_USER_BASE="$HOME/.local"
path+=$XDG_USER_BASE/bin

# The XDG variables are defined in terms of $XDG_USER_BASE.

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
xdg_config_dirs=(
    /etc/xdg
    $xdg_config_dirs
)

export XDG_DATA_HOME="$XDG_USER_BASE/share"
xdg_data_dirs=(
    /usr/local/share
    /usr/share
    $xdg_data_dirs
)
