# general
alias ll='ls -laG'
alias tree='tree -LC 2'
alias cl='clear'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

# grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# network
alias ping='ping -c 5'

# remove any un-needed deps from brew
alias brewnuke="brew cleanup -s --force && brew cask cleanup --force && brew prune"

# use sub to launch sublime
alias sub="subl"

# git aliases
alias gs="git status"
alias gl="git log --pretty=format:\"%C(yellow)%h %ad%Cred%d %Creset%s%Cblue [%cn]\" --decorate --date=relative"

# toggling hidden files in OS X
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool NO  && killall Finder"

# hexo commands
alias hs="hexo s --staging dev"
alias hc="hexo clean && hexo generate --staging dev"
alias hd="hexo clean && hexo deploy --staging production"
alias hl="hexo list"
