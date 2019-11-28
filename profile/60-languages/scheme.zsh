export CHICKEN_INSTALL_REPOSITORY="$XDG_USER_BASE/lib/chicken/5"
chicken_repository_path=(
    $chicken_repository_path
    /usr/lib/chicken/*(NF)
    $CHICKEN_INSTALL_REPOSITORY
)
export CHICKEN_REPOSITORY_PATH="$XDG_USER_BASE/lib/chicken/5"
export GUILE_HISTORY="$RLWRAP_HOME/guile_history"

#export GUILE_BASE="$XDG_USER_BASE"
#guile_load_path=($GUILE_BASE/share $guile_load_path)
#guile_load_compiled_path=($GUILE_BASE/lib $guile_load_compiled_path)
