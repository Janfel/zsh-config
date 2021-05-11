# Haskell

# GHC

# GHC version 9.2.1 will finally bring XDG compliance to GHC and GHCi.
# See https://gitlab.haskell.org/ghc/ghc/-/issues/6077 for the
# corresponding changes.

#export GHC_PACKAGE_PATH

# GHCup

# Finally we can just set this and be happy.
# Before this was implemented, we had to fudge around with
# ‘$GHCUP_INSTALL_BASE_PREFIX’ and a ‘./.ghcup/ -> ./’ symlink.
# See https://gitlab.haskell.org/haskell/ghcup-hs/-/blob/master/lib/GHCup/Utils/Dirs.hs
# for the relevant code.
# Notably binaries are now installed to ‘${XDG_BIN_HOME-"$HOME/.local/bin"}’
# which is a nonstandard location.
export GHCUP_USE_XDG_DIRS=1
manpath+="$XDG_DATA_HOME/ghcup/share/man"

# Cabal

# Support for ‘$CABAL_DIR’ might be removed once XDG support is added.
export CABAL_DIR="$XDG_DATA_HOME/cabal"
export CABAL_CONFIG="$XDG_CONFIG_HOME/cabal/config"
path+="$CABAL_DIR/bin"

# Stack

export STACK_ROOT=$XDG_DATA_HOME/stack
#stack_program_dirs=("$STACK_ROOT/programs/"*/*(NFOn))
#stack_comp_tool_dirs=("$STACK_ROOT/compiler-tools/"*/*(NFOn))
#path+="$STACK_ROOT/bin"
