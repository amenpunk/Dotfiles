#!/usr/bin/env bash
DIR=/home/cyberpunk/Documents/anime
CURRENT= ls $DIR | shuf -n 1
#notify-send -i 1000 "Now Playing 🎧" "$1 - $2" -i "/home/cyberpunk/.moc/scripts/miku.png"
echo "/home/cyberpunk/anime/"$CURRENT
#notify-send -i 500 "Now Playing 🎧" "$1 - $2" -i "$FINAL"

#notify-send "HOLA" -i $DIR
