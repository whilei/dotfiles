# prefer vim over nano
export VISUAL=vim
#export EDITOR='slime -w'

# set date string
date_stamp() {
	date +%d-%m-%y@%H_%M_%S
}
# Export the function so it can be used anywhere in another command, ie $ vim `date_stamp`.md
export -f date_stamp

