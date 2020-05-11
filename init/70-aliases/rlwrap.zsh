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

# Chicken Scheme
###if (($+commands[chicken-csc]))
alias csi='rlwrap chicken-csi'
alias csc='chicken-csc'
###endif
