# rlwrap
###if (($+commands[rlwrap]))

# Debian Almquist Shell
###if (($+commands[dash]))
alias dash='rlwrap dash'
###if [[ $(realpath /bin/sh) == /usr/bin/dash ]]
alias sh='rlwrap sh'
###endif /bin/sh
###endif dash
