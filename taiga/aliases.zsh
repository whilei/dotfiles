alias taigaAuth=". $HOME/.dotfiles/taiga/auth.sh"

# List userstories.
# $1 : <us|task>
# -l : list
# -r : ref

function taiga {

	resource="$1"
	action="list" # default
	ref=0 # default 

	# do us stuff
	while getopts ':lr:' opt; do
		case $opt in 
			l) action="list" ;;
			r) ref="$OPTARG" ;;
			\?) echo "-l to list"; exit 1 ;;
			*) exit 1 ;;
		esac
	done

	if [ $# -eq 0 ]; then
		echo "Use: taiga us "
		echo "                 -l : list"
		echo "                 -e : edit <subject>" #edit subject
		echo "           task"
		echo "                 -l : list"
		echo "                 -c : comment <#status,comment>"
		exit 1
	fi

	resource_action="$resource"_"$action"

	## ACTIONS

	# List userstories.
	if [ "$resource_action" = "us_list" ]; then

		echo "Listing userstories."
		ruby "$HOME"/.dotfiles/taiga/list-userstories.rb

	elif [ "$resource_action" = "task_list" ]; then

		# do task stuff
		echo "Listing tasks for ref $ref"

	else 
		echo "Use: taiga us "
		echo "                 -l : list"
		echo "                 -e : edit <subject>" #edit subject
		echo "           task"
		echo "                 -l : list"
		echo "                 -c : comment <#status,comment>"
		exit 1
	fi

	unset resource
	unset action
	unset ref
}

export -f taiga