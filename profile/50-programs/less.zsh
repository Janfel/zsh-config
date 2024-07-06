# Less

# Pass through color escape sequences.
export LESS='-R'

###if [[ -f "$XDG_CONFIG_HOME/less/history" ]]
###warn Please move your LESSHISTFILE to $XDG_STATE_HOME/lesshst
export LESSHISTFILE="$XDG_CONFIG_HOME/less/history"
###endif

###if [[ -f "$XDG_CONFIG_HOME/less/keys" ]]
###warn Please move your LESSKEY to $XDG_CONFIG_HOME/lesskey
export LESSKEY="$XDG_CONFIG_HOME/less/keys"
###endif
