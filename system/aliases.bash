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
alias ypr="rsync -avz --no-t -L --progress -h --no-perms --omit-dir-times" # This fixes permissions issues like cant set times, no perms, blah blah. All probably related to user issues on the sender side, but workaround for.
alias yprr="rsync -Prltvc -h --no-t --omit-dir-times --no-perms" # backup strict kind that usually doesn't error
alias ypu="rsync -avzu --progress -h" # update
alias yps="rsync -avzu --delete --progress -h --backup --backup-dir='backup_$(date +\%Y-\%m-\%d)'" # synchronize

# get dat EZ v
alias v="vim"

alias les="less" # less is les

# make executable
alias chx="chmod +x"

alias tailff="tail -F -n100"
alias tailf="tail -F"

# alias yank="pbcopy"
# alias paste="pbpaste"
alias cb="xsel -b"
alias cb-clear="xsel -cp && xsel -cs && xsel -cb"

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

alias xopen="xdg-open"

vf() {
	vim "$(fzf --height 50%)"
}

alias dbright="dbrightness"
alias dbb="dbrightness"
alias kbright="kbrightness"
alias kbb="kbrightness"
alias b="blink"

alias bb="blink 4 0.2"

# flash(){
# 	local ob=$(dbb)
# 	blink 5 0.05
# 	dbb 0.05 && sleep 0.1 && dbb $ob
# }

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
# lmf() {
# 	local f=$(gls -AltrpH --color | tail -1 | cut -f9- -d" ")
# 	echo -n "$f"
# }

alias lfm="lmf"

# Remove blank lines
alias squish="sed '/^\s*$/d'"

# Math for science
alias calc="insect"

# compgen -a
alias what="compgen -A function" # list all functions can run
alias What="compgen -A function -abck" # all functions, aliases, built-ins, keywords

# alias nmon="echo lnd- | nmon"

ports(){
	echo 'SELECT DISTINCT process.name, listening.port, process.pid FROM processes AS process JOIN listening_ports AS listening ON process.pid = listening.pid WHERE listening.address = "0.0.0.0";' | osqueryi
}
# export -f ports

alias xo='xdg-open'

# https://stackoverflow.com/questions/6841143/how-to-set-font-color-for-stdout-and-stderr
color()(set -o pipefail;"$@" 2>&1>&3|sed $'s,.*,\e[31m&\e[m,'>&2)3>&1

dateiso(){
	date +%Y-%m-%dT%H:%M:%S%z
}
export -f dateiso

alias pj='pijul'

record() {
	out=${1:-output.wav}
	if [[ ! -z "$1" ]]; then out="$1"; fi
	parec -d alsa_output.pci-0000_00_1f.3.analog-stereo.monitor --file-format=wav "$out"
}

recaudio() {
	out=${1:-output.wav}
	if [[ ! -z "$1" ]]; then out="$1"; fi
	outputs="$(pacmd list-sink-inputs | awk '$1 == "index:" {print $2}')"

	parec -d alsa_output.pci-0000_00_1f.3.analog-stereo.monitor --file-format=wav "$out"
}

alias tmuxsd='tmuxinator start dash'

# alias on.modify='inotifywait -q -m -r --event modify'
# alias on.create='inotifywait -q -m -r --event modify'
# alias on.create,modify='inotifywait -q -m -r --event modify --event create'
# alias on.modify,create='inotifywait -q -m -r --event modify --event create'

watchi() {
  while inotifywait --exclude .swp --exclude .idea -e modify -e create -e delete -r .; do $@; done;
}


alias wgetn='wget --no-check-certificate'

alias ws="websocat -B 650000"
trim(){
  awk '{$1=$1};1'
}
export -f trim

alias unic="unipicker"
alias unicb="unipicker --copy" # unic + cb (cb=clip board)

alias gpge="gpg -u 87A7226A40 --symmetric --cipher-algo AES256"
alias gpgd="gpg --decrypt"
