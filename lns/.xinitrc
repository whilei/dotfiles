#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
. /etc/X11/Xsession

xset r rate 160 50


# https://superuser.com/questions/629939/how-to-disable-monitor-standby-in-console
# disable screen sleeping (energy star features)
# (+dmps = on)
# xset -display :0.0 -dpms

#  pretty sure these all fail
# xset -dpms
# xset -display :0.0 s off
# xset -display :0.0 s noblank
# xset s off

# and this one seems to work
xset s off -dpms

# setxkbmap us; xmodmap /home/ia/xmodmap.norman
# [[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
[[ -f ~/xmodmap.norman_min ]] && xmodmap ~/xmodmap.norman_min

# Set higher mouse speed for anker mouse
# xinput list
# xinput list-props 16
# xinput list-props 8
xinput set-prop 16 171 1.5, 0.0, 0.0, 0.0, 1.5, 0.0, 0.0, 0.0, 1.0

# set trackpad
xinput set-prop 12 171 1.5, 0.0, 0.0, 0.0, 1.5, 0.0, 0.0, 0.0, 1.0

# set kensington slingblade slim
# device 15
# https://www.reddit.com/r/Ubuntu/comments/9yhg1v/any_solution_to_increase_the_scroll_speed_of_the/
xinput set-prop 15 'Evdev Scrolling Distance' 1 3 5
xinput set-prop 15 'Device Accel Constant Deceleration' 3

. /home/ia/.dotfiles/private/env.bash

xrdb -merge /home/ia/.Xresources
