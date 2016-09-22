# check if package is already installed
cask_is_installed() {
  brew cask list | grep -qFx "$1"
}

# install a package; if it's installed skip it
cask_install() {
  if cask_is_installed "$1"; then
    echo ""$1" is already installed..."
  else
    brew cask install "$1"
  fi
}

brew_tap caskroom/cask
brew_tap caskroom/versions

echo "Installing casks..."
# dev
cask_install iterm2-nightly
cask_install sublime-text
cask_install visual-studio-code
cask_install sequel-pro
cask_install robomongo
cask_install postman

# design
cask_install sketch

# browsers
cask_install google-chrome
cask_install firefox

# social
cask_install slack

# media
cask_install spotify

# utils
cask_install bettertouchtool
cask_install coconutbattery
cask_install appcleaner
cask_install licecap
cask_install the-unarchiver

brew cask cleanup
