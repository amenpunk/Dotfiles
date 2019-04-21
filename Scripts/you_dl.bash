#!bin/bash

echo -n "pega url del playlist: "
read URL
#exec youtube-dl -x --yes-playlist -f mp3 $URL

exec youtube-dl -x --yes-playlist --audio-format mp3 $URL
exec mv *.mp3 ~/Downloads/you_music/
