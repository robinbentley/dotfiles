# tap taps silently
brew_tap() {
  brew tap "$1" 2> /dev/null
}

# check if package is already installed
brew_is_installed() {
  brew list | grep -qFx "$1"
}

# install a package; if it's installed skip it
brew_install() {
  if brew_is_installed "$1"; then
    echo ""$1" is already installed..."
  else
    brew install "$1" $2
  fi
}

# Install homebrew if needed
which -s brew
if [[ $? != 0 ]] ; then
  yes | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew already installed..."
fi

echo "Updating homebrew..."
brew update

echo "Upgrading homebrew..."
brew upgrade

echo "Installing homebrew packages..."
brew bundle install --file="$(pwd)/packages/Brewfile"
ln -sf /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
mkdir ~/.nvm
