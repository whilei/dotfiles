#!/bin/bash

# Navigation

## Better ls
alias l="gls -lAhp --color"
alias ll='gls -lAhp --color' # cuz i'm used to it
alias lll='gls -lAhpR --color' # recursive
alias lt="gls -AltrpH --color" # recent at bottom
alias lsd="ls -lahd */" # list directories
export listy="command gls -lAhp --color" # Reusable `ll`-as-command.

## Relative
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ..4="cd ../../../../"
alias ..5="cd ../../../../../"

# cd into dir and show contents
cdl(){ command cd "$1"; $listy; }
..l(){ command cd ..; $listy; }
alias cl="cdl"

# Directory listing -- tree, if available.
if [[ "$(type -P tree)" ]]; then
  alias ltr='tree -alLhtDFC 2 -I .git' # 2 is max levels descended, -I ignore .git/
  alias ltrd='ltr -d' # only dirs
fi

## Absolute shortcuts.

alias dls="cd ~/Downloads/; $listy;"
alias pics="cd ~/Pictures/; $listy;"
alias dbx="cd ~/Dropbox; $listy;"
alias sbx="cd ~/sandbox; $listy;"
alias desk="cd ~/Desktop; $listy;"

# Read filenames containing $2 along with line of matched occurence
fff() {
	find $1 -type f -print0 | xargs grep "$2"
}
# Just filenames (no matching line)
ffn() {
	find $1 -type f -print0 | xargs grep -l "$2"
}

# Fasd.
# open fuzzy and popular file with vim
alias fv="f -e vim"

# Initialize FASD.
# (Use: f|d|a fuzzyterm
# (Use: ie cd `d dot`
fasd_cache="$HOME/.fasd-init-bash"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
  fasd --init posix-alias bash-hook bash-ccomp bash-ccomp-install >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache
unalias zz
alias zz="pmset displaysleepnow"

alias imgls="lsimg"
alias lscatimg="lsimg"
alias catimgls="lsimg"
