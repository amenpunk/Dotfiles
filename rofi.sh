#!/bin/bash

# Si no tienes un playlist generado puedes generarlo de la siguiente manera:
# updatedb -l 0 -U [Music PATH] -o music.db
#Adapted from by https://moc.daper.net/comment/6080#comment-6080

if [[ -z $(pgrep mocp) ]]; then
	sh $HOME/.moc/mocp-tee && mocp -c
fi
# Select track(s) in external library (if plugged):
cd $HOME/Music || exit
playlist="$(locate -d "$HOME/music.db" -b "" | rofi -fullscreen -width 100 -dmenu -i -multi-select -p " ♪ ")"
# Prevent MOC from fooling if selection cancelled:
mocp -c -a -p "$playlist"
