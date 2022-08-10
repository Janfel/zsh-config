# Bindings for the line editor
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html

# [Ctrl-Z] Resume the suspended process.
bindkey -M emacs -s '^Z' 'fg^M'
bindkey -M viins -s '^Z' 'fg^M'
bindkey -M vicmd -s '^Z' 'fg^M'
