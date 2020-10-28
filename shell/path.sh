# brew /bin and /sbin
export PATH="$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH"

# add flutter to path
export PATH=$HOME/.flutter-sdk/flutter/bin:$PATH

# go
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

# keep virtualenvs in one place
export WORKON_HOME=$HOME/.virtualenvs

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# mysql-client
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# symfony
export PATH="$HOME/.symfony/bin:$PATH"
