#!/usr/bin/env bash


knote() {
	mkdir -p "$HOME"/.knotes
	local p="$(random-word)-$(random-word)"
	local pp="$HOME"/.knotes/"$p".txt
	echo "$*" > "$pp"
	echo "K, noted: $pp"
	echo '...'
	tail -n10 "$pp"
	pbcopy "$pp"
	echo "Copied knote path to clipboard: $pp"
}
