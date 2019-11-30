# DEFAULT_USER="${DEFAULT_USER:-$USER}"
export DEFAULT_USER=$USER

export EDITOR=/usr/bin/micro
export VISUAL=/usr/bin/nvim
export PAGER=/usr/bin/less
export SHELL=/usr/bin/zsh
export BROWSER=/usr/bin/firefox-developer-edition
export GIT_COMMAND=/usr/bin/git

path=(
    ~/bin
    /usr/local/sbin
    /usr/local/bin
    /usr/bin
    $path
)
