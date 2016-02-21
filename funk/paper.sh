#!/bin/bash


# http://stackoverflow.com/questions/30560671/passing-multiple-parameters-to-shell-script-and-parsing-them


# service="default"
# node="default"

# while getopts 's:n:' opt; do
#     case $opt in
#         s)  service="$OPTARG" ;;
#         n)  node="$OPTARG"    ;;
#         *)  exit 1            ;;
#     esac
# done

# echo "service = '${service}'"
# echo "node    = '${node}'"


## note that in order for vim to make the directory if it doesn't exist requires some tinkering with .vimrc,
# which seems to me like a cleaner way to do it than handle a `mkdir -p` here, because the dir needs to be 
# written via buffer zone time thingey (because don't want to make a dir if not actually going to save the file)

dadropbase="$HOME/Dropbox/paper"
daname=`date +%d-%m-%y@%H_%M_%S`

while getopts 'n:d:' opt; do
	case $opt in
		n) daname="$OPTARG" ;;
		d) dadropbase="$HOME/Dropbox/paper/$OPTARG" ;;
		\?) echo "Use either or both -n <name> -d <dirname>"; exit 1 ;;
		*) exit 1 ;;
	esac
done

vim "${dadropbase}/${daname}.md"

