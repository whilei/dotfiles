# Navigation

## Better ls
alias ll='gls -lAhp --color'
alias l="gls -ltAhp --color"
# Reusable `ll`-as-command. 
export listy="command gls -lAh --color"

## Relative
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ..4="cd ../../../../"
alias ..5="cd ../../../../../"

# cd into dir and show contents
cdl(){ command cd $1; $listy; }
..l(){ command cd ..; $listy; }

# Directory listing -- tree
if [[ "$(type -P tree)" ]]; then
  # alias ll='tree --dirsfirst -aLpughDFiC 1'
  # alias lsd='ll -d'
  alias lt='tree --dirsfirst -alLhtDFC 4 -I .git' # 3 is max levels descended, -I ignore .git/
  alias ltd='lt -d'
fi

## Absolute shortcuts.  

alias dls="cd ~/Downloads/; $listy;"
alias pics="cd ~/Pictures/; $listy;"
alias dropbox="cd ~/Dropbox; $listy;"
alias sandbox="cd ~/sandbox; $listy;"
alias desk="cd ~/Desktop; $listy;"

# --> http://askubuntu.com/questions/110922/climb-up-the-directory-tree-faster
# Go up directory tree X number of directories
# function up() {
#     local counter="$@";
#     # default $counter to 1 if it isn't already set
#     if [[ -z $counter ]]; then
#         counter=1
#     fi
#     # make sure $counter is a number
#     if [ $counter -eq $counter 2> /dev/null ]; then
#         local nwd=`pwd` # Set new working directory (nwd) to current directory
#         # Loop $nwd up directory tree one at a time
#         until [[ $counter -lt 1 ]]; do
#             nwd=`dirname $nwd`
#             let counter-=1
#         done
#         cd $nwd # change directories to the new working directory
#     else
#         # print usage and return error
#         echo "usage: up <NUMBER>"
#         return 1
#     fi
# }
