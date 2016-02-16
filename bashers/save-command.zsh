
# Saves last command to .dotfiles/bashers/ as arg1=alias or function, arg2=nameoffunction with arg3=scriptfilename(.zsh, so it will be automatically sourced by .bash_profile)
# Resources that file so you can use the function right away (in that terminal login). 
savecommand(){
	local savetype=$1
	local namething=$2
	local namescript=$3
	local file=~/.dotfiles/bashers/$namescript
	local lastcommander=`fc -nl $((HISTCMD - 1))`
	
	if [ "$savetype" = "function" ]; then	
		echo "$namething(){" >> $file
		echo "$lastcommander" >> $file
		echo "}" >> $file
	fi

	if [ "$savetype" = "alias" ]; then
		echo "alias $namething='$lastcommander'" >> $file
	fi

	source $file

	e_success "Saved and sourced $lastcommander as $namething as a(n) $savetype to $file."
}

