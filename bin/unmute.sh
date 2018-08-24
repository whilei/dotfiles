#!/usr/bin/env bash

# Note that this set's PCM to a hard value of 100 (which is out of 255). That's why I bump it higher after adjusting master in following commands.
amixer scontrols | grep -oE "'.*'" | awk -F\' \
 '{print "amixer -c 0 set \""$2"\" unmute 100"}' | sh

amixer -c 0 set Master 60%
amixer -c 0 set PCM 100%


# amixer -c 0 set Master 70%
# amixer -c 0 set PCM 100%
