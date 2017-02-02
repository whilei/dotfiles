#!/usr/bin/env bash

# Write on paper. Save to Dropbox/paper/`date_stamp`.md

dadropbase="$HOME/Dropbox/paper"
daname=$(date +%d-%m-%y@%H_%M_%S)

while getopts 'f:d:' opt; do
	case $opt in
		f) daname="$OPTARG" ;;
		d) dadropbase="$HOME/Dropbox/paper/$OPTARG" ;;
		\?) echo "Use either or both -f <filename> -d <dirname>"; exit 1 ;;
		*) exit 1 ;;
	esac
done

vim "${dadropbase}/${daname}.md"

