# PATH config

typeset -U PATH path
path=(
    ~/bin
    $path
    $XDG_USER_BASE/bin
    $LUAROCKS_HOME_TREE/bin
    #${(s.:.)"$(luarocks path --lr-bin)"}
    ~/.cabal/bin
    #~/.stack/bin
    $STACK_ROOT/bin
    ~/.ghcup/bin
    $CARGO_HOME/bin
    $((( $+commands[ruby] )) && ruby -e 'puts Gem.user_dir')/bin
    $_DOTNET_TOOLPATH
    $PERL_BASE/bin
    $PYTHONUSERBASE/bin
    $gopath/bin
    #$((( $+commands[yarn] )) && yarn global bin || echo $XDG_DATA_HOME/yarn/bin)
    #$XDG_DATA_HOME/yarn/bin
    $NPM_CONFIG_PREFIX/bin
)
