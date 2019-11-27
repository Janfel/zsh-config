# JFL Extension
export XDG_USER_BASE="$HOME/.local"

export XDG_DATA_HOME="$XDG_USER_BASE/share"
typeset -xUT XDG_DATA_DIRS xdg_data_dirs
xdg_data_dirs=(
    /usr/local/share
    /usr/share
    $xdg_data_dirs
)

export XDG_CONFIG_HOME="$HOME/.config"
typeset -xUT XDG_CONFIG_DIRS xdg_config_dirs
xdg_config_dirs=(
    /etc/xdg
    $xdg_config_dirs
)

export XDG_CACHE_HOME="$HOME/.cache"
