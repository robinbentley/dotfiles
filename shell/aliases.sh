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

# network
alias ping='ping -c 5'

# remove any un-needed deps from brew
alias brewnuke="brew cleanup -s && brew cask cleanup && brew prune"

# use sub to launch sublime
alias sub="subl"

# git aliases
alias gs="git status"
alias gl="git log --pretty=format:\"%C(yellow)%h %ad%Cred%d %Creset%s%Cblue [%cn]\" --decorate --date=relative"

# toggling hidden files in OS X
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool NO  && killall Finder"

# neofetch
alias neofetch="neofetch --config ~/.config/neofetch/neofetchrc --shell_version off"
alias screenfetch="neofetch"
