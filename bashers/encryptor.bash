#!/usr/bin/env bash

encrypt(){
	if [[ $# -ne 2 ]]; then
		echo "Use"
		echo "$ encrypt infile outfile.enc"
		echo ""
	else
		openssl enc -aes-256-cbc -salt -in "$1" -out "$2"
	fi
}

decrypt(){
	if [[ $# -ne 2 ]]; then
		echo "Use"
		echo "$ decrypt infile outfile.enc"
		echo ""
	else
		openssl enc -d -aes-256-cbc -in "$1" -out "$2"
	fi
}
