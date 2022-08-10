# Zsh Options

# Changing Directories
setopt AUTO_CD                  # Use ‘cd’ when calling the name of directory.
setopt AUTO_PUSHD               # Make ‘cd’ push directories onto the stack.
setopt PUSHD_IGNORE_DUPS        # Deduplicate the directory stack.
setopt PUSHD_MINUS              # Address the stack from the top down.

# Expansion and Globbing
setopt EXTENDED_GLOB            # More pattern features.
setopt RC_EXPAND_PARAM          # Make ‘a{b,c}d’ expand to ‘abd acd’.

# History
setopt EXTENDED_HISTORY         # Record timestamp of each command in HISTFILE.
setopt HIST_EXPIRE_DUPS_FIRST   # Delete duplicates first when HISTFILE exceeds HISTSIZE.
setopt HIST_IGNORE_DUPS         # Ignore duplicated commands history.
setopt HIST_IGNORE_SPACE        # Ignore commands that start with space.
setopt HIST_VERIFY              # Show history expanded commands before execution.
setopt SHARE_HISTORY            # Share command history after each command.

# Input/Output
setopt NO_CLOBBER               # Disable truncating files in redirections.
setopt IGNORE_EOF               # Do not immediately exit on EOF (Ctrl-D).
setopt INTERACTIVE_COMMENTS     # Allow comments even in interactive shells.
setopt RC_QUOTES                # Allow ‘''’ to mean a single quote withing a single quoted string.
setopt RM_STAR_WAIT             # Wait ten seconds when asking for ‘rm *’ confirmation.

# Job Control
setopt AUTO_CONTINUE            # Continue a suspended job when disowning it.
setopt AUTO_RESUME              # Auto-resume a job with a matching single word command.
setopt LONG_LIST_JOBS           # Print job notifications in the long format by default.

# Scripts and Functions
setopt LOCAL_OPTIONS            # Make shell options function scoped.
setopt LOCAL_PATTERNS           # Make disabled patterns function scoped.
setopt LOCAL_TRAPS              # Make traps function scoped.
setopt MULTIOS                  # Allow multiple redirections.

# Zle
setopt NO_BEEP                  # Disable beeping on error.
