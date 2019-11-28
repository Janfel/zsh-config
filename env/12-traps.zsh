# USR1: Rehash completions
# This lets pacman send USR1 for zsh to rehash.
trap 'rehash' USR1
