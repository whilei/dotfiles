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

