#!/bin/bash

# function scratch {
#   vim ~/Dropbox/scratch/$DATE-$(openssl rand -base64 10 | tr -dc 'a-zA-Z').txt
# }
# Export function for interpolateable reuse.
# export -f scratch

# function paper {

# 	# default file name
# 	# filenamer=`date +%d-%m-%y@%H_%M_%S`
# 	# dirnamer=""
# 	# customdir=0

# 	if [[ $# -eq 0 ]]; then
# 		vim ~/Dropbox/paper/`date +%d-%m-%y@%H_%M_%S`.md
# 	elif [[ $# -eq 1 ]]; then
# 		vim ~/Dropbox/paper/"$1".md
# 	elif [[ "$2" = "x" ]]; then
# 		mkdir -p ~/Dropbox/paper/"$1"
# 		vim ~/Dropbox/paper/"$1"/`date +%d-%m-%y@%H_%M_%S`.md
# 	else 
# 		mkdir -p ~/Dropbox/paper/"$1"
# 		vim ~/Dropbox/paper/"$1"/"$2".md
# 	fi
# }

# function papery {
	
	
# }
			#statements
  
  # else there are args
  # else 

	# -n <name>
	# -d <directory>
	# while getopts ":n:d:" opt; do 
	# 	case $opt in
	# 		n)
	# 			# new val for $filenamer
	# 			set filenamer="$OPTARG"
	# 			echo "-n was triggered, Parameter: $OPTARG"
	# 			;;
	# 		d) 
	# 			# new val for $dirnamer AND signifier that a custom dir was argued.
	# 			set dirnamer="$OPTARG"
	# 			set customdir=1
	# 			echo "-d was triggered, Parameter: $OPTARG" >&2
	# 			;;
	# 		\?)
	# 			echo "You need help: -$OPTARG. Usage: -n <name>, -d <subdirector name>" >&2
	# 			exit 1
	# 			;;
	# 		:)
	# 			echo "Option -$OPTARG requires an argument." >&2
	# 			exit 1
	# 			;;
	# 	esac
	# done


	# if [ "$customdir" -gt 0 ]; then
	# 	mkdir -p ~/Dropbox/paper/"$dirnamer"
	# 	vim ~/Dropbox/paper/"$dirnamer"/"$filenamer".md
	# else
	# 	vim ~/Dropbox/paper/"$filenamer".md
	# fi

	# echo "This damn thing even ran at least." >&2

	# unset $filenamer
	# unset $dirnamer
	# unset $customdir

# }
  	

#   # optionally pass args to name the paper and or specify subdirectory
#   elif [ $# -gt 1 ]; then
#   	mkdir -p ~/Dropbox/paper/"$1"
#   	vim ~/Dropbox/paper/"$1"/`date +%d-%m-%y@%H_%M_%S`.txt 
#   else 
#   	mkdir -p ~/Dropbox/paper/"$1"
#   	vim ~/Dropbox/paper/"$1"/`date +%d-%m-%y@%H_%M_%S`.txt 
#   fi
# }


# while getopts ":a:" opt; do
#   case $opt in
#     a)
#       echo "-a was triggered, Parameter: $OPTARG" >&2
#       ;;
#     \?)
#       echo "Invalid option: -$OPTARG" >&2
#       exit 1
#       ;;
#     :)
#       echo "Option -$OPTARG requires an argument." >&2
#       exit 1
#       ;;
#   esac
# done

