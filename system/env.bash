# prefer vim over nano
export VISUAL=vim
#export EDITOR='slime -w'
export EDITOR="vim"

HISTSIZE=100000
HISTFILESIZE=1000000
shopt -s histappend
stty -ixon  # turn of suspend/freeze behavior (ctrl-s)

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
  date '+%Y-%m-%dT%H-%M-%S'
}
# Export the function so it can be used anywhere in another command, ie $ vim `date_stamp`.md
export -f date_stamp
alias datestamp="date_stamp" # cuz I forget
alias timestamp="date_stamp"
alias time_stamp="date_stamp"

today_date_stamp() {
	date '+%Y-%m-%d'
}
alias date_today="today_date"

export LC_TYPE=UTF-8
export GPG_TTY=`tty`
