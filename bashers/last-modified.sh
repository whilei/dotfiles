#!/bin/bash

# ALIAS: lastmod

if [[ $# -eq 0 ]]; then
	gfind . -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' ' | tail -1
elif [[ $# -eq 1 ]]; then
	gfind . -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' ' | tail -$1	
elif [[ $# -eq 2 ]]; then
	gfind $1 -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' ' | tail -$2	
else
	echo "Usage: $ lastmod <(path|.)?> <tailcount|1>"
	echo "Note: <(path|.)?> is relative to $CWD"
fi



# Flags. 
# -d 
# -f 

# Usage: $ lastmod <path> -<d|f> <number>


# howmany=1
# kind="file"

# if [[ "$1" -eq "-d" || "$1" -eq "-f" ]]; then
# 	where="$PWD"
# else 	
# 	where="$1"
# fi

# while getopts "d:f:" opt; do
# 	case $opt in
# 		d) $howmany="$OPTARG"; kind = "dir" ;; 
# 		f) $howmany="$OPTARG" ;;
# 		\?) echo "Usage: $ lastmod <path> -<d|f> <number>"; exit 1 ;;
# 		*) echo "Usage: $ lastmod <path> -<d|f> <number>"; exit 1 ;;
# 	esac
# done

# if [[ "$kind" -eq "file" ]]; then 
# 	gfind $where -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' ' | tail -$howmany	
# else 
# 	ls -tr $where | tail -$howmany &>2 
# fi

# unset where
# unset howmany
# unset kind
