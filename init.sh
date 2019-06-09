#!/bin/bash -x

xrandr --output $(xrandr | grep 'HDMI-[0-9] connected' | awk '{print $1}') --mode 2560x1440 --left-of $(xrandr | grep 'eDP-[0-9] connected' | awk '{print $1}') --rotate left
setxkbmap -option grp:ctrl_shift_toggle us,ru
xmodmap .xmodmap_das
amixer -D pulse set Master 1+ 50% on
[ -z "`amixer get Capture | grep "\[on\]"`" ] && amixer set Capture 1+ 100% toggle
#xautolock -time 10 -locker lock
