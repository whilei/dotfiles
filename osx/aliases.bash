# Recursively delete `.DS_Store` files
alias remove_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# Notifications
alias notif_off="launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist && \
killall -9 NotificationCenter"
alias notif_on="launchctl load -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist"

