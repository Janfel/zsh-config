# Aliases for Python.
###if (($+commands[python]))

alias py=python
alias pym='python -m'

###if (($+commands[python2]))
alias py2=python2
alias py2m='python2 -m'
###endif


# Aliases for modules.
alias venv='python -m venv'
###if ((!$+commands[pip]))
alias pip='python -m pip'
###endif


# IPython
###if (($+commands[ipython]))
alias ipy=ipython
###endif
###if (($+commands[ipython2]))
alias ipy2=ipython2
###endif

# Conda
###if (($+commands[conda]))
__conda_setup="$(conda shell.zsh hook 2> /dev/null)"
((!?)) && eval $__conda_setup
unset __conda_setup
###endif
