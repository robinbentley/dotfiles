# =====================================================
# add rbenv and completions
# =====================================================
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi


# =====================================================
# make virtualenv easier with virtualenvwrapper
# =====================================================
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# =====================================================
# Add brew /bin to path
# =====================================================
export PATH="$(brew --prefix)/bin:$PATH"

# =====================================================
# Add brew coreutils
# =====================================================
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# =====================================================
# make sure /usr/local/bin is always before /usr/bin
# =====================================================
export PATH=/usr/local/bin:$PATH

# =====================================================
# adding shopify themekit to path
# =====================================================
PATH="/Users/robin/.themekit:$PATH"
