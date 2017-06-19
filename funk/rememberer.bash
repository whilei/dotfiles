#!/bin/bash

# Just stick some useful one-liners from along the way appended into
# remmber file, handily.
#
# Because `echo "!!" > ~/.dotfiles/remember` is such a pain in the ass...
#
# Usage: remember "!!"
#      : remember "drive pull -export png -explicitly-export ..."

rr() {
	echo "$1 # $2" >> "$DOTS_PATH"/remembered
}
