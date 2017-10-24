#!/bin/bash

# find beautiful process
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# make dir and cd into it
mkcd(){
	 mkdir -p "$@" && cd "$@" # thanks cowboy. this is better
}

# The best rysyncer.
# The -a flag is for archive, which "ensures that symbolic links, devices, attributes, permissions, ownerships, etc. are preserved in the transfer"; the -z flag compresses files during the transfer; -v is for verbose; and --progress shows you your progress. I've enshrined this in an alias:
# Copy the files pointed to by the symbolic links ("transform symlink into referent file/dir") with the --L flag:
alias yp="rsync -avz -L --progress -h" # copy (?)
alias ypu="rsync -avzu --progress -h" # update
alias yps="rsync -avzu --delete --progress -h --backup --backup-dir='backup_$(date +\%Y-\%m-\%d)'" # synchronize

# get dat EZ v
alias v="vim"

# make executable
alias chx="chmod +x"

alias tailff="tail -f -n1000"
alias tailf="tail -f"

alias yank="pbcopy"
alias paste="pbpaste"


# Power management; ie [sleepnow | displaysleepnow | lock | boot]
# -a, -b, -c :: all, battery, charger
# Tinkering with settings requires sudo.
alias pms="pmset" # [-a | -b | -c ]... (0 for sleep, displaysleep, disksleep is never)

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/,
# so says holman. What he said.
alias stfu="osascript -e 'set volume output muted true'"
alias to11="osascript -e 'set volume 7'"

alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

# Hide/show all desktop icons (useful when presenting)
alias hidedesk="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesk="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hide_desk="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias show_desk="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hide_desktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias show_desktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidem="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showem="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
# ... Because I can never remember exactly what past me thought was a memorable name.

alias htop="sudo htop"
alias iiftop="sudo iftop -i en1 -o 10s"

alias zzz="pmset sleepnow"

alias snots="open $HOME/Pictures/screenshots"

alias og="open -g"
alias ogh="open -g hammerspoon://"

vf() {
	vim "$(fzf --height 50%)"
}

alias dbright="dbrightness"
alias dbb="dbrightness"
alias kbright="kbrightness"
alias kbb="kbrightness"
alias b="blink"

alias bb="blink 4 0.2"

flash(){
	local ob=$(dbb)
	blink 5 0.05
	dbb 0.05 && sleep 0.1 && dbb $ob
}

myip(){
	ipconfig getifaddr en1
}
alias whatismyip="myip"
alias getmyip="myip"

# Get last modified file (last modified file -- lmf)
# eg
# vi `lf`
# tail -f `lf`
# mv `lf` ../othername
lmf() {
	local f=$(gls -AltrpH --color | tail -1 | cut -f9- -d" ")
	echo -n "$f"
}

alias lfm="lmf"

