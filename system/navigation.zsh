# Navigation

## Better ls
alias ll='gls -lAh --color'
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

## Absolute shortcuts.  

alias dls="cd ~/Downloads/; $listy;"
alias pics="cd ~/Pictures/; $listy;"
alias dropbox="cd ~/Dropbox; $listy;"
alias sandbox="cd ~/sandbox; $listy;"
alias desk="cd ~/Desktop; $listy;"

function dots {
	cd ~/.dotfiles/$1
}

function dev {
	cd ~/dev/$1
}

# --> http://askubuntu.com/questions/110922/climb-up-the-directory-tree-faster
# Go up directory tree X number of directories
function up() {
    local counter="$@";
    # default $counter to 1 if it isn't already set
    if [[ -z $counter ]]; then
        counter=1
    fi
    # make sure $counter is a number
    if [ $counter -eq $counter 2> /dev/null ]; then
        local nwd=`pwd` # Set new working directory (nwd) to current directory
        # Loop $nwd up directory tree one at a time
        until [[ $counter -lt 1 ]]; do
            nwd=`dirname $nwd`
            let counter-=1
        done
        cd $nwd # change directories to the new working directory
    else
        # print usage and return error
        echo "usage: up <NUMBER>"
        return 1
    fi
}
