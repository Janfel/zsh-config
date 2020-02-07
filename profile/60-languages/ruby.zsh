# Ruby

# Change location of IRB init script.
export IRBRC="$XDG_CONFIG_HOME/ruby/init.rb"

# Put Gem cache in ~/.cache.
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"

# Add Gem bin to PATH. This has to call Ruby,
# because the directory name is versioned.
path+=$((( $+commands[ruby] )) && ruby -e 'puts Gem.user_dir')/bin
