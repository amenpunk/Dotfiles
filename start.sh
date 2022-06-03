#!/bin/bash

setxkbmap -option caps:swapescape
setxkbmap -layout us,latam
setxkbmap -option 'grp:alt_shift_toggle'
xset r rate 300 60
warpd
wmfocus
