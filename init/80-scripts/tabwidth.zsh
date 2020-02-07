# Configure how tabs are displayed.

# Set terminal to output tabs (default).
stty tabs
# Set tab width to four.
(( $+commands[tabs] )) && tabs -4
