# find beautiful process
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# make dir and cd into it
mkcd(){
	 mkdir -p "$@" && cd "$@" # thanks cowboy. this is better
}

alias eachdir=". ~/.dotfiles/bashers/each-dir.sh"

# The -a flag is for archive, which "ensures that symbolic links, devices, attributes, permissions, ownerships, etc. are preserved in the transfer"; the -z flag compresses files during the transfer; -v is for verbose; and --progress shows you your progress. I've enshrined this in an alias:
# Copy the files pointed to by the symbolic links ("transform symlink into referent file/dir") with the --L flag:
alias yp="rsync -avz -L --progress"

# EZ v
alias v="vim"

# make executable
alias chx="chmod +x"

# edit .bash_profile and re-source after
alias bro="$EDITOR ~/.bash_profile; source ~/.bash_profile;"

# Open applications. 

# usage: $ slime . \or $ slime ../some/where/else
alias slime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias safari="open -a safari"
alias firefox="open -a firefox"
alias chrome="open -a google\ chrome"
alias joyce="open -a ulysses"
alias vlc="vlc *.mp3"

alias cdulysses="cd ~/Library/Containers/com.soulmen.ulysses3/Data/Documents/Library"
alias cdiawriter="cd ~/Library/Mobile\ Documents/74ZAFF46HB~jp~informationarchitects~Writer/Documents"

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/,
# so says holman. What he said. 
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"

alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

# Venezuelans. 
alias cleaningladies="source ~/.dotfiles/system/housekeep.sh"
