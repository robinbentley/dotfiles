# general
alias ll='ls -laG'
alias tree='tree -L 2'
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
alias brewnuke="brew cleanup -s --force"

# use sub to launch sublime
alias sub="subl"

# git aliases
alias gs="git status"
alias gl="git log --pretty=format:\"%C(yellow)%h %ad%Cred%d %Creset%s%Cblue [%cn]\" --decorate --date=relative"

# django manage commands
alias djsyncdb="python manage.py syncdb"
alias djmake="python manage.py makemigrations"
alias djserve="python manage.py runserver"
alias djmigrate="python manage.py migrate"
alias djapp="python manage.py startapp"
alias djproject="python manage.py startproject"
alias djtest="python manage.py test"

# toggling hidden files in OS X
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool NO  && killall Finder"

# hexo commands
alias hs="hexo s --staging dev"
alias hc="hexo clean && hexo generate --staging dev"
alias hd="hexo deploy --staging production"
alias hl="hexo list"
