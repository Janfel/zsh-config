# Lua

###if (($+commands[rlwrap]))

# PUC-Rio Lua already uses ‘readline’ or an equivalent library.

###if (($+commands[luajit]))
alias luajit='rlwrap luajit'
###endif

###if (($+commands[fennel]))
alias fennel='rlwrap fennel'
###endif

###endif
