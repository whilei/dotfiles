#!/bin/sh

justs(){
	# find ~/justs -type f -printf "%f\n"
	ls -lshart ~/justs
}

alias justl="justs"

# just is better than todo. mindgames.
just(){
	set -e
	mkdir -p ~/justs
	touch ~/justs/"$*"

	justs
}

# justdid
justd(){
	local js j
	js=$(find ~/justs -type f) &&
	j="$(echo "$js" | fzf +m -e)" &&

	echo Removing: $(echo \'$j\')
	rm "$j"

	echo "Remaining:"
	justs
}

alias justrm="justd"
