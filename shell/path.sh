# Add brew /bin and /sbin to path
export PATH="$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH"

# add flutter to path
export PATH=$HOME/.flutter-sdk/flutter/bin:$PATH

# set go path
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"

# add nvm to path
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

# keep virtualenvs in one place
export WORKON_HOME=$HOME/.virtualenvs

# add pyenv to path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# add poetry
export PATH="$HOME/.poetry/bin:$PATH"

# add helm v2 to path
export PATH="/usr/local/opt/helm@2/bin:$PATH"
