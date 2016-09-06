# Dotfiles
I decided to nuke my laptop and start building everything up from scratch, for the moment this repo is to store my dotfiles and keep track of my install process. In the future the plan is to sort it all out and make it something I can grab to set up a new machine if ever needed.
First step is to install xcode from the app store and then use [Homebrew](http://brew.sh) to manage packages.

## Homebrew packages
    tree wget zsh vim node git htop

## Taps
    caskroom/versions 'brew tap caskroom/versions'

## Casks
    install caskroom 'brew install caskroom/cask/brew-cask'
    brew cask install iterm2 coconutbattery appcleaner subler github-desktop spotify sublime-text3 atom


## Symlinks
    ln -fs ~/dotfiles/zsh ~/.zsh
    ln -fs ~/dotfiles/zshrc ~/.zshrc
    ln -fs ~/dotfiles/gemrc ~/.gemrc
    ln -fs ~/dotfiles/gitconfig ~/.gitconfig
    ln -fs ~/dotfiles/vim ~/.vim
    ln -fs ~/dotfiles/vimrc ~/.vimrc
    ln -fs ~/dotfiles/gvimrc ~/.gvimrc

    ln -sf ~/dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
    ln -sf ~/dotfiles/sublime/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

## Install sublime package control
    wget https://packagecontrol.io/Package%20Control.sublime-package -P ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages

## Actions
    #change shell to zsh once it's installed
    chsh -s /bin/zsh

## TODO
All the things
