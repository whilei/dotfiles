# Navigation

## Relative
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

# Absolute shortcuts.  

alias dls="cd ~/Downloads/"
alias pics="cd ~/Pictures/"
alias dropbox="cd ~/Dropbox"
alias dev="cd ~/dev"
alias sandbox="cd ~/sandbox"

function dots {
	cd ~/.dotfiles/$1/
}
