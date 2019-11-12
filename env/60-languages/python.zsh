typeset -xUT PYTHONPATH pythonpath

export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/init.py"
export PYTHON_EGG_CACHE="$XDG_CACHE_HOME/python/eggs"
export PYTHONUSERBASE="$XDG_USER_BASE"

# Pylint
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
export PYLINTRC="$XDG_CONFIG_HOME/python/pylint.conf"
