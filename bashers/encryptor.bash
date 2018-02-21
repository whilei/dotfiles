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
alias enc="encrypt"

decrypt(){
	if [[ $# -ne 2 ]]; then
		echo "Use"
		echo "$ decrypt infile outfile.enc"
		echo ""
	else
		openssl enc -d -aes-256-cbc -in "$1" -out "$2"
	fi
}
alias dec="decrypt"

sha(){
	if [[ $# -lt 1 ]]; then
		echo "Use"
		echo "$ sha256 file"
	else
		local output="$(openssl sha -sha256 $1)"
		echo "$output"
		local justsha="$( echo $output | cut -d ' ' -f2)"
		echo "$justsha" | pbcopy
		echo "Copied '$justsha' to clipboard!"
	fi
}
alias sha256="sha"

md5(){
	if [[ $# -lt 1 ]]; then
		echo "Use"
		echo "$ md5 file"
	else
		openssl md5 $1
	fi
}
alias md5sum="md5"
