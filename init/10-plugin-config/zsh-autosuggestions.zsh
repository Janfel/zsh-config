# Zsh Autosuggestions

# See: https://github.com/zsh-users/zsh-autosuggestions

# TODO: Change this when running on a 8 color terminal like the Linux console.
# typeset -g ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE

# Disable autosuggestions when the buffer exceeds this size.
# The recommended value is 20.
typeset -g ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=50

# Ignore history elements longer than 120 characters.
# I have tried 50 before, but found that value too small.
typeset -g ZSH_AUTOSUGGEST_HISTORY_IGNORE='?(#c120,)'
