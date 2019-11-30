export IRBRC="$XDG_CONFIG_HOME/ruby/init.rb"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
path+=$((( $+commands[ruby] )) && ruby -e 'puts Gem.user_dir')/bin
