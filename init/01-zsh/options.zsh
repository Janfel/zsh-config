# Zsh Options

# General
setopt AUTO_CD                  # Use cd when calling name of directory.
setopt INTERACTIVE_COMMENTS     # Enable comment sign in interactive shell.
setopt LONG_LIST_JOBS           # Longer job notifications.
setopt MULTIOS                  # Allow multiple redirections.
setopt NO_BEEP                  # Disable beeping.
setopt NO_CLOBBER               # Disable truncating files in redirections.
#setopt PROMPT_SUBST            # Allow expansions in prompt string.

# Expansion
setopt EXTENDED_GLOB            # More pattern features.
setopt RC_EXPAND_PARAM          # Make “a{b,c}d” expand to “abd acd”.

# Function Scoping
setopt LOCAL_OPTIONS            # Make shell options function scoped.
setopt LOCAL_PATTERNS           # Make disabled patterns function scoped.
setopt LOCAL_TRAPS              # Make traps function scoped.

# Directory Stack
setopt AUTO_PUSHD               # Make “cd” push directories onto the stack.
setopt PUSHD_IGNORE_DUPS        # Deduplicate the directory stack.
setopt PUSHD_MINUS              # Address the stack from the top down.

# History
setopt EXTENDED_HISTORY         # Record timestamp of each command in HISTFILE.
setopt HIST_EXPIRE_DUPS_FIRST   # Delete duplicates first when HISTFILE exceeds HISTSIZE.
setopt HIST_IGNORE_DUPS         # Ignore duplicated commands history.
setopt HIST_IGNORE_SPACE        # Ignore commands that start with space.
setopt HIST_VERIFY              # Show history expanded commands before execution.
setopt SHARE_HISTORY            # Share command history after each command.
