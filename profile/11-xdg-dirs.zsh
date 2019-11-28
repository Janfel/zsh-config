# JFL Extension
export XDG_USER_BASE="$HOME/.local"
path+=$XDG_USER_BASE/bin

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
