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
# keep virtualenvs in one place
# =====================================================
export WORKON_HOME=$HOME/.virtualenvs

# =====================================================
# Add brew /bin and /sbin to path
# =====================================================
export PATH="$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH"
