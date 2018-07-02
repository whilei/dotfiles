#!/usr/bin/env bash

bookmark=/Users/ia/Desktop/swe.bookmark
# late to the game
if [ ! -f "$bookmark" ]; then
	touch "$bookmark"
	for n in {06..30}; do
		echo "$n" >> "$bookmark"
	done
fi
next=$(head -n1 "$bookmark")
open -a VLC "/Users/ia/Downloads/pimsleur/Lesson $next.mp3"
echo $(tail -n +2 "$bookmark") > "$bookmark"
