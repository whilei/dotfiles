#!/usr/bin/env bash

setb(){
	# 0 - 24
	echo "$1"000 | sudo tee /sys/class/backlight/intel_backlight/brightness
	cat /sys/class/backlight/intel_backlight/max_brightness
}

alias lopen="xdg-open"
