# better ls
alias ll='gls -lAh --color'

# find beautiful process
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# make dir and cd into it
mkcd(){
	mkdir -p $1
	cd $1
}

# make executable
alias chx="chmod +x"

# edit .bash_profile and re-source after
alias bro="$EDITOR ~/.bash_profile; source ~/.bash_profile;"

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# cd into dir and show contents
cdl(){
	command cd $1
	command gls -lAh --color
}
..l(){
	command cd ..
	command gls -lAh --color
}


# Navigate to folders by name. 

alias dls="cd ~/Downloads/"
alias pics="cd ~/Pictures/"
alias dropbox="cd ~/Dropbox"
alias dev="cd ~/dev"
alias dots="cd ~/.dotfiles"


# Open applications. 

alias safari="open -a safari"
alias firefox="open -a firefox"
alias chrome="open -a google\ chrome"
alias joyce="open -a ulysses"


# Stuff I never really use but cannot delete either because of http://xkcd.com/530/,
# so says holman. What he said. 
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"

alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

# Venezuelans. 

alias cleaningladies="source ~/.dotfiles/system/housekeep.sh"
