#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
. /etc/X11/Xsession

xset r rate 160 50
# setxkbmap us; xmodmap /home/ia/xmodmap.norman
# [[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
[[ -f ~/xmodmap.norman_min ]] && xmodmap ~/xmodmap.norman_min

# Set higher mouse speed for anker mouse
# xinput list
# xinput list-props 16
xinput set-prop 16 171 1.5, 0.0, 0.0, 0.0, 1.5, 0.0, 0.0, 0.0, 1.0

# set trackpad
xinput set-prop 12 171 1.5, 0.0, 0.0, 0.0, 1.5, 0.0, 0.0, 0.0, 1.0
