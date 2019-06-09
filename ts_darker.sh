#!/bin/bash
set -x

read < "/sys/class/backlight/intel_backlight/brightness" brightness
var1=960
brightness=`expr $brightness - $var1`
echo $brightness > /sys/class/backlight/intel_backlight/brightness
