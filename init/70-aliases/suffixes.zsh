# Global ZSH aliases

# sort uniq
alias -g  B='| bat'
alias -g BL='| bat -l'

alias -g  T='| tee'
alias -g TE='| tee /dev/stderr'

alias -g  S='| sort'
alias -g  U='| uniq'
alias -g SU='| sort -u'

alias -g C='| wc -l'
alias -g F='| fmt - '
alias -g L='| less'
alias -g X='| xargs'

# silence output
alias -g Q='>/dev/null'
alias -g QE='2>/dev/null'
alias -g QA='>/dev/null 2>&1'

# head and tail
alias -g H='| head'
alias -g HL='| head -n 20'
alias -g HLL='| head -n 50'
alias -g HLLL='| head -n 100'

alias -g T='| tail -n 10'
alias -g TL='| tail -n 20'
alias -g TLL='| tail -n 50'
alias -g TLLL='| tail -n 100'

# devices
alias -g DI='/dev/stdin'
alias -g DO='/dev/stdout'
alias -g DE='/dev/stderr'
alias -g DN='/dev/null'
alias -g DZ='/dev/zero'
alias -g DR='/dev/urandom'

# directories
alias -g    ...='../..'
alias -g   ....='../../..'
alias -g  .....='../../../..'
alias -g ......='../../../../..'
