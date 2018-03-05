# grep colors
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31;40'

# =====================================================
# set go
# =====================================================
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"

# =====================================================
# add nvm to path
# =====================================================
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

# =====================================================
# make virtualenv easier with virtualenvwrapper
# =====================================================
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# =====================================================
# Add brew /bin and /sbin to path
# =====================================================
export PATH="$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH"
