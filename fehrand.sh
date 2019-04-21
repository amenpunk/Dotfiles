#!/usr/bin/env bash

IMGDIR=/home/cyberpunk/Documents/wall
#while true; do
#IMGFAV=/home/cyberpunk/Documents/wall/eva_01.png
IMGFAV=/home/cyberpunk/Documents/wall/apex.jpg
  CURRENT= ls $IMGDIR | shuf -n 1
  #feh -F $IMGDIR/$CURRENT
  #pid=$!               
  #feh --randomize --bg-fill $IMGDIR/$CURRENT 
  #feh --bg-fill $IMGDIR/$CURRENT
  #feh -F $IMGDIR/$CURRENT
  wal -i $IMGDIR/$CURRENT 
  
  #wal -i $CURRENT/$IMGFAV
  #kill $pid 
 # sleep 120
#done
