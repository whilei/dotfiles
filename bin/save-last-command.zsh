savethatone(){
	echo "`fc -nl $((HISTCMD - 1))`" > ~/dev/is-toolkit/bash/`date_stamp`.sh
}
