typeset -U PATH path
path=(
    ~/.local/bin
    $path
    ${(s.:.)"$(luarocks path --lr-bin)"}
    ~/.cabal/bin
    ~/.stack/bin
    ~/.ghcup/bin
    $CARGO_HOME/bin
    $((($+commands[ruby] )) && ruby -e 'puts Gem.user_dir')/bin
    $PERL_HOME/bin
    $PYTHONUSERBASE/bin
    $GOPATH/bin
    $((( $+commands[yarn] )) && yarn global bin || echo $XDG_DATA_HOME/yarn/bin)
)
