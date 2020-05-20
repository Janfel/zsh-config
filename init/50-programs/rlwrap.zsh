# rlwrap
###if (($+commands[rlwrap]))

# Debian Almquist Shell
###if (($+commands[dash]))
alias dash='rlwrap dash'
###if [[ $(realpath /bin/sh) == /usr/bin/dash ]]
alias sh='rlwrap sh'
###endif /bin/sh
###endif dash

# Steel Bank Common Lisp
###if (($+commands[sbcl]))
alias sbcl='rlwrap sbcl'
###endif

# Fennel
###if (($+commands[fennel]))
alias fennel='rlwrap fennel'
###endif
