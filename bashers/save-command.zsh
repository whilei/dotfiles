# Saves last command to .dotfiles/bashers/ as arg1=alias or function, arg2=nameoffunction with arg3=scriptfilename(.zsh, so it will be automatically sourced by .bash_profile)
# Resources that file so you can use the function right away (in that terminal login). 

savecommand(){

	if [[ "$1" == "-h" || "$1" == "--help" ]]; then 
	
		echo "Usage: $ savecommand <-arg|> <(arg#)|> <alias|function> <(name)> <(filename)>/"
	
	else 

		if [ "$1" = "-arg" ]; then 

			local piece=$2 # ie, !!:0, !!:1, !-2:3,4, !$, etc. 
			local savetype=$3 # <alias|function>
			local namething=$4 # <name of alias of function>
			local namescript=$5 # <filename>
			local svpfile=~/.dotfiles/bashers/$namescript
			# local lastcommander=`fc -nl $((HISTCMD - 1))`
			
			if [ "$savetype" = "function" ]; then	
				echo "$namething(){" >> $svpfile
				# echo "$lastcommander" >> $svpfile
				echo "$piece" >> $svpfile
				echo "}" >> $svpfile
			fi

			if [ "$savetype" = "alias" ]; then
				# echo "alias $namething='""$lastcommander""'" >> $svpfile
				echo "alias $namething='""$piece""'" >> $svpfile
			fi

			# review, add comments, whatever
			$VISUAL $svpfile

			source $svpfile
			e_success "Saved and sourced $lastcommander as $namething as a(n) $savetype to $svpfile."

		else

			local savetype=$1 # <alias|function>
			local namething=$2 # <name of alias of function>
			local namescript=$3 # <filename>
			local svfile=~/.dotfiles/bashers/$namescript
			local lastcommander=`fc -nl $((HISTCMD - 1))`
		
			if [ "$savetype" = "function" ]; then	
				echo "$namething(){" >> $svfile
				echo "$lastcommander" >> $svfile
				echo "}" >> $svfile
			fi

			if [ "$savetype" = "alias" ]; then
				echo "alias $namething='""$lastcommander""'" >> $svfile
			fi

			# review, add comments, whatever
			$VISUAL $svfile

			source $svfile
			e_success "Saved and sourced $lastcommander as $namething as a(n) $savetype to $svfile."

		fi
	fi
}