#!/usr/bin/env bash
files=(/home/cyberpunk/Documents/anime/*)

img="${files[RANDOM % ${#files[@]}]}"

notify-send -i 1000 "Now Playing 🎧" "$1 - $2" -i $img

