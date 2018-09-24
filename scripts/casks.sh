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
cask_install iterm2
cask_install visual-studio-code
cask_install sequel-pro
cask_install dbeaver-community
cask_install insomnia
cask_install docker
cask_install vagrant
cask_install virtualbox
cask_install cyberduck

# design
cask_install figma
cask_install colorsnapper
cask_install adobe-creative-cloud

# browsers
cask_install google-chrome
cask_install firefoxdeveloperedition
cask_install firefox

# social
cask_install slack
cask_install google-chat

# media
cask_install spotify
cask_install transmission
cask_install vlc

# utils
cask_install coconutbattery
cask_install appcleaner
cask_install kap
cask_install the-unarchiver
cask_install keybase

brew cask cleanup
