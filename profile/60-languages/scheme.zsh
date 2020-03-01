# Scheme

# Chicken Scheme

export CHICKEN_INSTALL_REPOSITORY="$XDG_USER_BASE/lib/chicken/5"
chicken_repository_path=(
	/usr/lib/chicken/*(NF)
	$CHICKEN_INSTALL_REPOSITORY
)
chicken_include_path=(
	$chicken_repository_path
)

# CHICKEN_C_INCLUDE_PATH
# CHICKEN_C_LIBRARY_PATH

# Guile Scheme

export GUILE_HISTORY="$RLWRAP_HOME/guile_history"

#export GUILE_BASE="$XDG_USER_BASE"
#guile_load_path=($GUILE_BASE/share $guile_load_path)
#guile_load_compiled_path=($GUILE_BASE/lib $guile_load_compiled_path)
