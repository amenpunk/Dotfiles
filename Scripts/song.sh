#!/bin/bash
LAST=$(echo "/`mocp -i|grep File:|cut -d '/' -f 2-5`")
cd "$LAST"
X=$(mat --display "$IMG0"|grep "Exif Image Width:"|cut -d ' ' -f 4)
if [ "$X" != "100" ]; then
    $HOME/.moc/scripts/Resice.sh
fi

I=$(ls|grep -i -e *.jpg)
if [ -f "$I" ]; then
    IMG0=$(find . -name '*.jpg' -or -name '*.jpeg' -or -name '*.png'|shuf -n1|xargs -0) #$(ls|grep -i -e *.jpg)  #$(ls|grep -i -e *.jpg -e *.png -e *.jpeg)
else
    IMG0=$(find . -name '*.jpg' -or -name '*.jpeg' -or -name '*.png'|cut -c2-|shuf -n1|xargs -0)  
fi

for cover in "$IMG0"; do
if [ "$IMG0" ]; then
    IMG=$(echo "$LAST/$cover")
else
    IMG=$(echo "$HOME/.moc/scripts/icon-moc.png")
fi
done

if [ "$2" ]; then
    notify-send -i "$IMG" "$1:" "$2\n$4"
else
    notify-send -i "$IMG" "$3"
fi
exit
