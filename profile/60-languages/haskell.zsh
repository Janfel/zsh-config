# Haskell

# Finally we can just set this and be happy.
# Before this was implemented, we had to fudge around with
# ‘$GHCUP_INSTALL_BASE_PREFIX’ and a ‘./.ghcup/ -> ./’ symlink.
# See https://gitlab.haskell.org/haskell/ghcup-hs/-/blob/master/lib/GHCup/Utils/Dirs.hs
# for the relevant code.
export GHCUP_USE_XDG_DIRS=1

# Cabal
export CABAL_DIR="$XDG_DATA_HOME/cabal" # Not documented as of 2020-02-15.
export CABAL_CONFIG="$XDG_CONFIG_HOME/cabal/config"

# Stack
export STACK_ROOT=$XDG_DATA_HOME/stack
#stack_program_dirs=("$STACK_ROOT/programs/"*/*(NFOn))
#stack_comp_tool_dirs=("$STACK_ROOT/compiler-tools/"*/*(NFOn))

path+=(
	#~/.cabal/bin
	$CABAL_DIR/bin
	#~/.stack/bin
	#$STACK_ROOT/bin
)
