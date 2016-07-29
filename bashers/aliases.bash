alias lmod="bash $HOME/.dotfiles/bashers/last-modified.sh"

# http://stackoverflow.com/questions/3510673/find-and-kill-a-process-in-one-line-using-bash-and-regex
killer(){
	kill $(ps aux | grep "$1" | awk '{print $2}')
}

# Sorts dirs and/or files by size. 
alias sizes="du -d 1 -h | sort"

# executable lives at $HOME/bin/syncthing
# edits were made to replace USERNAME with my local username in the .plist file below
alias gosync="launchctl -w load ~/Library/LaunchAgents/syncthing.plist"

# Gogs CLI
alias gogr="gogs repo"