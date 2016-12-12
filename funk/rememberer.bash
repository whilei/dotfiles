#!/bin/bash

# Just stick some useful one-liners from along the way appended into
# remmber file, handily.
#
# Because `echo "!!" > ~/.dotfiles/remember` is such a pain in the ass...
#
# Usage: remember "!!"
#      : remember "drive pull -export png -explicitly-export ..."

remember() {
	echo "$1" >> "$DOTS_PATH"/remember
}
