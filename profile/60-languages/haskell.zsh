# Haskell

# Where GHCUP install GHC.
export GHCUP_INSTALL_BASE_PREFIX="$HOME/opt/ghcup"

# Stack
export STACK_ROOT=$XDG_DATA_HOME/stack
#stack_program_dirs=("$STACK_ROOT/programs/"*/*(NFOn))
#stack_comp_tool_dirs=("$STACK_ROOT/compiler-tools/"*/*(NFOn))

path+=(
    ~/.cabal/bin
    #~/.stack/bin
    #$STACK_ROOT/bin
    #~/.ghcup/bin
    $(realpath $GHCUP_INSTALL_BASE_PREFIX/.ghcup/bin)
)
