#!/bin/bash
# rofi/dmenu & locate required; rofi adds selected track(s) to playlist.
# Make sure MOC is running:
if [[ -z $(pgrep mocp) ]]; then
	sh $HOME/.moc/mocp-tee && mocp -c
fi
# Select track(s) in external library (if plugged):
cd /home/cyberpunk/Music || exit
playlist="$(locate -d "$HOME/music.db" -b "" | rofi -width 100 -dmenu -i -multi-select -p " ♪ ")"
notify-send "$playlist"
# Prevent MOC from fooling if selection cancelled:
#if [[ "$playlist" ]]; then
#exec mocp -ya "$playlist"
mocp -ya "$playlist"
#else
#	exit
#fi
