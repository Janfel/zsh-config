## Chicken Scheme

typeset -xUT CHICKEN_INCLUDE_PATH chicken_include_path ';'
# typeset -xUT CHICKEN_OPTIONS chicken_options

export CHICKEN_INSTALL_REPOSITORY="$XDG_USER_BASE/lib/chicken/5"
typeset -xUT CHICKEN_REPOSITORY_PATH chicken_repository_path
chicken_repository_path=(
    $chicken_repository_path
    /usr/lib/chicken/*(NF)
    $CHICKEN_INSTALL_REPOSITORY
)

export CHICKEN_REPOSITORY_PATH="$XDG_USER_BASE/lib/chicken/5"

## Guile Scheme

export GUILE_HISTORY="$RLWRAP_HOME/guile_history"

#export GUILE_BASE="$XDG_USER_BASE"

#typeset -xUT GUILE_LOAD_PATH guile_load_path
#guile_load_path=($GUILE_BASE/share $guile_load_path)

#typeset -xUT GUILE_LOAD_COMPILED_PATH guile_load_compiled_path
#guile_load_compiled_path=($GUILE_BASE/lib $guile_load_compiled_path)
