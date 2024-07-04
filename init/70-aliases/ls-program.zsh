# LS Aliases

###if (($+commands[eza]))
###warn Selected eza

alias l=eza
alias ll='eza -l'
alias la='eza -a'
alias lla='eza -la'
alias lg='eza -l --git'
alias lt='eza -T'
alias lta='eza -Ta'

###elif (($+commands[exa]))
###warn Selected exa

alias l='exa'
alias ll='exa -l'
alias la='exa -a'
alias lla='exa -la'
alias lg='exa -l --git'
alias lt='exa -T'
alias lta='exa -Ta'

###elif (($+commands[lsd]))
###warn Selected lsd

alias l='lsd'
alias ll='lsd -l'
alias la='lsd -A'
alias lla='lsd -lA'
alias lt='lsd --tree'
alias lta='lsd --tree -A'

###else
###warn Selected ls + tree

alias l='ls -F'
alias la='ls -AF'
alias ll='ls -lhF'
alias lla='ls -lhAF'
alias lt='tree'
alias lta='tree -a'

###endif
