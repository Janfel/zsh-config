# Zsh Aliases

# Make it so aliases after ‘sudo’ are expanded.
alias sudo='sudo '

alias :q=exit

# Safety
alias cp='cp -i'
alias rm='rm -I'
alias mv='mv -i'
alias rename='rename -i'
alias perl-rename='perl-rename -i'

alias diff='diff --color=auto'
alias du='du -h'
alias ls='ls --color=auto'
alias md='mkdir -p'
alias println='print -rC1 --'
alias rd='rmdir'
alias tp='trash-put'
alias whose='pacman --query --owns'
alias xd='hexdump -C'

alias neovim='env NEOVIM_CONFIG_LEVEL=3 nvim'
