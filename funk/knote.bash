#!/usr/bin/env bash


knote() {
	mkdir -p "$HOME"/.knotes
	local p="$(random-word)-$(random-word)"
	local pp="$HOME"/.knotes/"$p".txt
	echo "$*" > "$pp"
	echo '---'
	tail "$pp"
	echo '---'
	echo "[K, noted. Copied knote path to clipboard] $pp"
	# '-n': copy to clipboard without newline
	echo -n "$pp" | pbcopy
}
