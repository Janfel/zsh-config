# configures terminal settings

# set terminal to output tabs (default)
stty tabs
# set tab width to four
(( $+commands[tabs] )) && tabs -4
