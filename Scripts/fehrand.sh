#!/usr/bin/env bash

#IMGDIR=/home/cyberpunk/Documents/wall
xset r rate 500 100
setxkbmap -option 'grp:alt_shift_toggle'
setxkbmap -option caps:swapescape
IMGDIR=$HOME/Pictures
IMGFAV=$HOME/Pictures/fav.png
  CURRENT= ls $IMGDIR | shuf -n 1
  feh --randomize --bg-fill $IMGDIR/$CURRENT 
