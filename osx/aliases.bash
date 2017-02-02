
# Open applications.
# usage: $ slime . \or $ slime ../some/where/else
alias slime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias atom='/usr/local/bin/atom'
alias safari="open -a safari"
alias firefox="open -a firefox"
alias chrome="open -a google\ chrome"
alias joyce="open -a ulysses"
alias vlc="vlc *.mp3"

# Open Safari on a localhost port $1.
lh(){
	open -a Safari "http://localhost:$1"
}

# Recursively delete `.DS_Store` files
alias remove_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# Notifications
alias notif_off="launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist && \
killall -9 NotificationCenter"
alias notif_on="launchctl load -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist"

