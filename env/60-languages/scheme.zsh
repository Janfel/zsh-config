## Chicken Scheme

# export CHICKEN_REPOSITORY=$XDG_DATA_HOME/chicken

## Guile Scheme

export GUILE_HOME="$XDG_DATA_HOME/guile"
export GUILE_HISTORY="$GUILE_HOME/history"

typeset -xUT GUILE_LOAD_PATH guile_load_path
guile_load_path=($GUILE_HOME/share $guile_load_path)

typeset -xUT GUILE_LOAD_COMPILED_PATH guile_load_compiled_path
guile_load_compiled_path=($GUILE_HOME/lib $guile_load_compiled_path)
