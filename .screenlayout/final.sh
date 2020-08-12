#!/bin/sh
xrandr --output eDP1 --mode 1366x768 --pos 1440x0 --rotate normal --output HDMI1 --primary --mode 1440x900 --pos 0x0 --rotate normal --output VIRTUAL1 --off
~/.config/polybar/launch.sh
exec nitrogen --restore
