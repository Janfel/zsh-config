# TTY

# Configure how tabs are displayed.

# Set terminal to output tabs (default).
stty tabs

###if (($+commands[tabs]))
# Set tab width to four.
tabs -4
###endif
