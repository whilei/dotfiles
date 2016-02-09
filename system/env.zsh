# prefer vim over nano
export VISUAL=vim
#export EDITOR='slime -w'

# usage: $ slime . \or $ slime ../some/where/there
alias slime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# set date string
date_stamp() {
	date +%d-%m-%y@%H_%M_%S
}
