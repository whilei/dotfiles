#!/bin/bash

# find beautiful process
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# make dir and cd into it
mkcd(){
	 mkdir -p "$@" && cd "$@" # thanks cowboy. this is better
}

alias eachdir=". ~/.dotfiles/bashers/each-dir.sh"

# The best rysyncer.
# The -a flag is for archive, which "ensures that symbolic links, devices, attributes, permissions, ownerships, etc. are preserved in the transfer"; the -z flag compresses files during the transfer; -v is for verbose; and --progress shows you your progress. I've enshrined this in an alias:
# Copy the files pointed to by the symbolic links ("transform symlink into referent file/dir") with the --L flag:
alias yp="rsync -avz -L --progress -h" # copy (?)
alias ypu="rsync -avzu --progress -h" # update
alias yps="rsync -avzu --delete --progress -h --backup --backup-dir='backup_$(date +\%Y-\%m-\%d)'" # synchronize

# EZ v
alias v="vim"

alias t="touch"

# make executable
alias chx="chmod +x"

# Open Safari on a localhost port $1.
lh(){
	open -a "Safari" "http://localhost:$1"
}

# Power management; ie [sleepnow | displaysleepnow | lock | boot]
# -a, -b, -c :: all, battery, charger
alias pms="pmset" # [-a | -b | -c ]... (0 for sleep, displaysleep, disksleep is never)

# Open applications.

# usage: $ slime . \or $ slime ../some/where/else
alias slime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias atom='/usr/local/bin/atom'
alias safari="open -a safari"
alias firefox="open -a firefox"
alias chrome="open -a google\ chrome"
alias joyce="open -a ulysses"
alias vlc="vlc *.mp3"

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/,
# so says holman. What he said.
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"

alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

alias cleaningladies="source ~/.dotfiles/system/housekeep.sh"

# Hide/show all desktop icons (useful when presenting)
alias hidedesk="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesk="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
