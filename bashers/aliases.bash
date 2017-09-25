# http://stackoverflow.com/questions/3510673/find-and-kill-a-process-in-one-line-using-bash-and-regex
killit(){
	kill $(ps aux | grep "$1" | awk '{print $2}')
}

# Sorts dirs and/or files by size.
alias sizes="du -d 1 -h | sort"

# executable lives at $HOME/bin/syncthing
# edits were made to replace USERNAME with my local username in the .plist file below
alias gosync="launchctl -w load ~/Library/LaunchAgents/syncthing.plist"

# Gogs CLI
alias gogr="gogs repo"

# Docker

alias dm="docker-machine"
alias dc="docker-compose"

#alias dcr="docker-compose run"
#alias dcb="docker-compose build"
#alias dcu="docker-compose up"

edme() {
	"$(eval docker-machine env $1)"
}

# Google Drive CLI
alias dp="drive push -verbose"

len() {
	local str="$*"
	local size=${#str}
	echo -n $size
}

# fkill - kill process
fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

# fterm - kill process with SIGTERM
fterm() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-15}
  fi
}


