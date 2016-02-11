
# Save last command to .dotfiles/bashers/
savethatone(){
	local namefunction=$1
	local namescript=$2
	local file=~/.dotfiles/bashers/$2.zsh
	echo "$1(){" >> $file
	echo "`fc -nl $((HISTCMD - 1))`" >> $file
	echo "}" >> $file
	source $file
	e_success "Saved and sourced `fc -nl $((HISTCMD - 1))` as $1() to $file."
}

