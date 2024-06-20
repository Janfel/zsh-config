# Clojure

## Leiningen
###if (($+commands[lein]))

# Remove this once 2.10.1 comes out
# https://github.com/technomancy/leiningen/issues/2087
export LEIN_HOME="$XDG_CONFIG_HOME/leiningen"

###endif

## Boot
###if (($+commands[boot]))
export BOOT_HOME="$XDG_CONFIG_HOME/boot"
###endif
