# prefer vim over nano
export VISUAL=vim
#export EDITOR='slime -w'
export EDITOR="$VISUAL"

# the emacs train...
# start a daemon on launchctrl for fast startup??...
# per HN folk @ ycombi
# emacs -nw --daemon # (no-window-system)
# then,
# emacsclient -new
alias e="emacsclient -t" # (requires $1)
# alias vim="e"
# alias vi="e"
# alias v="e"
# fires up a 'clean' (ignores init files...) terminal mode emacs instance.
# useless for a guy like me
# alias emacsbare="emacs -new -Q --eval \"(load-them 'monokai')\""
alias eb="emacsbare"
alias starte="emacs -nw --daemon > ~/logs/emacs.log 2>&1 &"

export RBGOGS_PATH=/Users/ia/rotblauer/rbgogs


# set date string
date_stamp() {
	date +%d-%m-%y@%H_%M_%S
}
# Export the function so it can be used anywhere in another command, ie $ vim `date_stamp`.md
export -f date_stamp
alias datestamp="date_stamp" # cuz I forget
alias timestamp="date_stamp"
alias time_stamp="date_stamp"

today_date() {
	date +%Y-%m-%d
}
alias date_today="today_date"
alias scw="screencapture -W -t jpg ~/Pictures/screenshots/`date_stamp`.jpg"
