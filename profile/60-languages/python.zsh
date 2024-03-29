# Python

export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/init.py"
export PYTHON_EGG_CACHE="$XDG_CACHE_HOME/python/eggs"
export PYTHONUSERBASE="$XDG_USER_BASE"
#path+=$PYTHONUSERBASE/bin

# PipX
export PIPX_HOME="$XDG_DATA_HOME/python/pipx"
export PIPX_BIN_DIR="$XDG_BIN_HOME"

# IPython
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"

# Conda
export CONDA_AUTO_ACTIVATE_BASE='false'

# Pylint
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
export PYLINTRC="$XDG_CONFIG_HOME/python/pylint.conf"

# mypy
export MYPY_CACHE_DIR="$XDG_CACHE_HOME/mypy"

# jupyter
# https://jupyter.readthedocs.io/en/latest/projects/jupyter-directories.html
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export JUPYTER_RUNTIME_DIR="$XDG_RUNTIME_DIR/jupyter"
#export JUPYTER_PATH
#export JUPYTER_DATA_DIR
