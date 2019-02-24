#!/usr/bin/env bash

setb(){
	# 0 - 24
	echo "$1"000 | sudo tee /sys/class/backlight/intel_backlight/brightness
	cat /sys/class/backlight/intel_backlight/max_brightness
}

getb(){
	cat /sys/class/backlight/intel_backlight/brightness
}

xback() {
  done=false;
  backlightp='/sys/class/backlight/intel_backlight/brightness'
  n=$(cat $backlightp)
  echo "less: h, more: l, quit: q"
  while ! $done; do
    read -rsn1 key
    if [ "$key" = h ]; then
      n=$((n-1000))
      echo "$n" | sudo tee "$backlightp"
    elif [ "$key" = l ]; then
      n=$((n+1000))
      echo "$n" | sudo tee "$backlightp"
    elif [ "$key" = q ]; then
      done=true
    fi
    cat "$backlightp"
  done
}

setkb(){
	# 0 - 2
	echo "$1" | sudo tee '/sys/class/leds/tpacpi::kbd_backlight/brightness'
	cat '/sys/class/leds/tpacpi::kbd_backlight/max_brightness'
}

alias lopen="xdg-open"

alias clx="clear; tmux clear-history;"

xset r rate 200 30

settz(){
	local tzs tz
	tzs=$(find -L /usr/share/zoneinfo -type f) # -L = always follow symbolic links
	tz=$(echo "$tzs" | fzf --tac +m -e) &&
	sudo mv /etc/localtime /etc/localtime.bak
	sudo ln -sf "$tz" /etc/localtime
}

alias ctz="settz"
alias changetz="settz"
alias wtftimezone="settz" # make it easier for What grepping; NOTE to self: wtf_keyword might be a useful convention for greppable alias refs

# screen locker
# alias sit="slock" # locks input w/ black screen
alias kiosk="xtrlock"
# set() {
# 	xtrlock
# }

# alias kio="set"
# alias set="xtrlock" # locks input w/o blanking screen, (see sit --> set)
# alias kio="xtrlock" # KIOsk mode

# clamshell mode

clam(){
	ok=1
	if [[ -z "$1" ]] || [[ "$1" =~ "h" ]]; then
		echo "Use:"
		echo "$ clam [on|off]"
		echo ""
		echo "Disables or enables clamsell mode."
		echo "'Clamshell mode' causes the laptop to NOT suspend operations (eg. 'sleep') if the lid is closed."
		echo "So _clam on_ causes the laptop to not sleep if the lid is closed,"
		echo "an _clam off_ causes the laptop to sleep if lid is close (like normal)."
	else
		echo "Turning clamshell mode $1"
		if [[ "$1" == "on" ]]; then
			ok=0
			echo "TURNING CLAM ON (closing the lid will NOT cause the computer to sleep)"
			sudo sed -i 's/HandleLidSwitch=suspend/HandleLidSwitch=ignore/g' /etc/systemd/logind.conf
		elif [[ "$1" == "off" ]]; then
			ok=0
			echo "TURNING CLAM OFF (closing the lid WILL cause the computer to sleep)"
			sudo sed -i 's/HandleLidSwitch=ignore/HandleLidSwitch=suspend/g' /etc/systemd/logind.conf
		else
			echo "Use:"
			echo "$ clam [on|off]"
			echo ""
			echo "Disables or enables clamsell mode."
			echo "'Clamshell mode' causes the laptop to NOT suspend operations (eg. 'sleep') if the lid is closed."
			echo "So _clam on_ causes the laptop to not sleep if the lid is closed,"
			echo "an _clam off_ causes the laptop to sleep if lid is close (like normal)."
		fi
		if [[ "$ok" -eq 0 ]]; then
			echo "Restarting systemctl systemd-logind"
			sudo systemctl restart systemd-logind
		fi
		echo "Done"
	fi
}
