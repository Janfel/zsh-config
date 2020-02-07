# Zsh options.

setopt AUTO_CD              # Use cd on directory name
setopt INTERACTIVE_COMMENTS # Comments in interactive shell
setopt LONG_LIST_JOBS       # Longer job notifications
setopt MULTIOS              # Allow multiple redirections
setopt NO_BEEP              # Disable beeping
#setopt PROMPT_SUBST         # Allow expansions in prompt string

# expansion
setopt EXTENDED_GLOB        # More pattern features
setopt RC_EXPAND_PARAM      # Make a{b,c}d = abd acd

# function scoping
setopt LOCAL_OPTIONS        # Allow function scoped options
setopt LOCAL_TRAPS          # Allow function scoped traps
setopt LOCAL_PATTERNS       # Allow disabled patterns per function

# directory stack
setopt AUTO_PUSHD           # Push dirs onto dir stack
setopt PUSHD_IGNORE_DUPS    # Dedupe dir stack
setopt PUSHD_MINUS          # Make cd -n the n-th to last directory

# history
setopt EXTENDED_HISTORY       # record timestamp of command in HISTFILE
setopt HIST_EXPIRE_DUPS_FIRST # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt HIST_IGNORE_DUPS       # ignore duplicated commands history list
setopt HIST_IGNORE_SPACE      # ignore commands that start with space
setopt HIST_VERIFY            # show command with history expansion to user before running it
setopt INC_APPEND_HISTORY     # add commands to HISTFILE in order of execution
setopt SHARE_HISTORY          # share command history data
