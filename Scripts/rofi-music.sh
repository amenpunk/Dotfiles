#!/usr/bin/env bash

get_current_song() {
    mocp -i |\
    awk '/^Title/ {sub(/^[ ]*([^ ]+ +){2}/, ""); print $0}'
}

if [[ $1 == "-i" ]]; then
    printf "$(get_current_song | sed 's/&amp\;/\&/g')"
else 
    ACTION=$(printf "pause/play\nnext\nprevious\nshuffle\nrepeat\nplaylist\nopen\nstart\nexit\n" |\
             rofi -dmenu -p 'mocp' -mesg "Current song: $(get_current_song | sed 's/\&/\&amp\;/g')" -separator-style solid)
    
    case $ACTION in
        'pause/play') mocp -G            ;;
        'next')       mocp -f            ;;
        'previous')   mocp -r            ;;
        'shuffle')    mocp -t shuffle    ;;
        'repeat')     mocp -t repeat     ;;
        'playlist')   mocp -p            ;;
        'open')       kitty -e mocp    ;;
        'start')      mocp -S; rofi-mocp ;;
        'exit')       mocp -x            ;;
    esac
fi

exit
