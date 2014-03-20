# Dotfiles
I decided to nuke my laptop and start building everything up from scratch, for the moment this repo is to store my dotfiles and keep track of my install process. In the future the plan is to sort it all out and make it something I can grab to set up a new machine if ever needed.
First step is to install xcode from the app store and then use [Homebrew](http://brew.sh) to manage packages.

## Homebrew packages
    tree wget zsh vim rbenv ruby-build node git python python3 weechat

## Symlinks
    ln -fs ~/dotfiles/zsh ~/.zsh
    ln -fs ~/dotfiles/zshrc ~/.zshrc
    ln -fs ~/dotfiles/gemrc ~/.gemrc
    ln -fs ~/dotfiles/gitconfig ~/.gitconfig
    ln -fs ~/dotfiles/vim ~/.vim
    ln -fs ~/dotfiles/vimrc ~/.vimrc
    ln -fs ~/dotfiles/gvimrc ~/.gvimrc
    ln -fs ~/dotfiles/weechat ~/.weechat

## Actions
    #change shell to zsh once it's installed
    chsh -s /bin/zsh

## TODO
All the things
