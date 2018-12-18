#!/usr/bin/env bash

arec(){
	if [[ -z "$1" ]]; then 
		echo "Use: 
		$ arec file-to-record-to.txt"
	else
		asciinema rec --raw --overwrite "$1"
	fi
}
