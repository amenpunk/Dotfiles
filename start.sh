#!/bin/bash
autorandr --change
xset r rate 300 60
warpd
setxkbmap -option caps:swapescape
setxkbmap -layout us,latam
setxkbmap -option 'grp:alt_shift_toggle'
nitrogen --restore
