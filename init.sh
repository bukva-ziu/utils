#!/bin/bash -x
xrandr --output $(xrandr | grep 'VGA[0-9] connected' | awk '{print $1}') --mode 1920x1200 --left-of $(xrandr | grep 'LVDS[0-9] connected' | awk '{print $1}')
setxkbmap -option grp:ctrl_shift_toggle us,ru
xmodmap .xmodmap_das
amixer -D pulse set Master 1+ 50% on
[ -z "`amixer get Capture | grep "\[on\]"`" ] && amixer set Capture 1+ 100% toggle
pkill xscreensaver
