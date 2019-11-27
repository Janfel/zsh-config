DEFAULT_USER="${DEFAULT_USER:-$USER}"

export EDITOR=/usr/bin/micro
export VISUAL=/usr/bin/nvim
export PAGER=/usr/bin/less
export GIT_COMMAND=/usr/bin/git

typeset -U PATH path
path=(
    ~/bin
    /usr/local/sbin
    /usr/local/bin
    /usr/bin
    $path
)
