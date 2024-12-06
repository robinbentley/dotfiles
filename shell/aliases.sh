# general
alias ll='ls -laFh'

# show permissions as numeric values
alias lln='ls -lFh | awk "{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/) *2^(8-i));if(k)printf(\"%0o \",k);print}"'
alias tree='tree -LC 2'
alias cl='clear'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'
alias dot='cd ~/dotfiles'
alias goroot='cd $GOPATH/src/github.com/robinbentley'

# network
alias ping='ping -c 5'

# homebrew
alias brewclean="brew cleanup -s"
alias brewdump="brew bundle dump --force --file=~/dotfiles/packages/Brewfile"

# git aliases
alias gs="git status"
alias gl="git log --pretty=format:\"%C(yellow)%h %ad%Cred%d %Creset%s%Cblue [%cn]\" --decorate --date=relative"

# toggling hidden files in OS X
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool NO  && killall Finder"

# neofetch
alias neofetch="neofetch --config ~/.config/neofetch/neofetchrc --shell_version off"
alias screenfetch="neofetch"

# download best audio using youtube-dl
alias ytaudio="youtube-dl -x --audio-format mp3 --audio-quality 0 -o '%(title)s.%(ext)s'"

# start screensaver from terminal
alias ss="open -a ScreenSaverEngine"

# docker
alias dc="docker-compose"

# use https://github.com/sharkdp/bat over cat
alias cat="bat --theme=base16 --style=plain"
alias catl="bat --theme=base16"
alias batl="catl"

# kubectl
alias kucontexts="kubectl config get-contexts"
alias kuprod="kubectl config use-context podcast-production-v2"
alias kustage="kubectl config use-context podcast-staging-v2"
alias kupods="kubectl get pods"
alias kudeletepod="kubectl delete pod"
alias kudescribepod="kubectl describe pod"
alias kulogs="kubectl logs"
alias kushell='function _kubectlshell(){ kubectl exec --stdin --tty "$1" -- /bin/sh; };_kubectlshell'
