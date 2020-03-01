# For more see: https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md

# Which spaceship prompt plugins to use.
SPACESHIP_PROMPT_ORDER=(
	#time          # Time stampts section
	user # Username section
	dir  # Current directory section
	host # Hostname section
	git  # Git section (git_branch + git_status)
	#hg            # Mercurial section (hg_branch  + hg_status)
	package # Package version
	node    # Node.js section
	#ruby          # Ruby section
	#elm           # Elm section
	#elixir        # Elixir section
	#xcode         # Xcode section
	#swift         # Swift section
	golang  # Go section
	php     # PHP section
	rust    # Rust section
	haskell # Haskell Stack section
	#julia         # Julia section
	#docker        # Docker section
	#aws           # Amazon Web Services section
	venv # virtualenv section
	#conda         # conda virtualenv section
	#pyenv         # Pyenv section
	#dotnet        # .NET section
	#ember         # Ember.js section
	#kubecontext   # Kubectl context section
	#terraform     # Terraform workspace section
	exec_time # Execution time
	line_sep  # Line break
	#battery       # Battery level and status
	vi_mode   # Vi-mode indicator
	jobs      # Background jobs indicator
	exit_code # Exit code section
	char      # Prompt character
)

#SPACESHIP_RPROMPT_ORDER=(
#	exit_code
#	exec_time
#	jobs
#)

# Uncomment for a pure-like experience.
#SPACESHIP_CHAR_SYMBOL="❯ "
#SPACESHIP_CHAR_COLOR_SUCCESS=magenta

SPACESHIP_EXIT_CODE_SHOW=true

SPACESHIP_JOBS_SYMBOL=" "
#SPACESHIP_JOBS_SYMBOL="✦ "
