
# Saves last command to .dotfiles/bashers/ as arg1=nameoffunction with arg2=scriptfilename(.zsh, so it will be automatically sourced by .bash_profile)
# Resources that file so you can use the function right away (in that terminal login). 
savecommand(){
	local namefunction=$1
	local namescript=$2
	local file=~/.dotfiles/bashers/$2
	echo "$1(){" >> $file
	echo "`fc -nl $((HISTCMD - 1))`" >> $file
	echo "}" >> $file
	source $file
	e_success "Saved and sourced `fc -nl $((HISTCMD - 1))` as $1() to $file."
}

