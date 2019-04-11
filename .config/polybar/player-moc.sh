#!/bin/sh

if [ "$(mocp -Q %state)" != "STOP" ];then
    SONG=$(mocp -Q %song)
    ART=$(mocp -Q %artist)    
    if [ -n "$SONG" ]; then
         #echo "$SONG - $(mocp -Q %album)"
          echo "  $ART - $SONG  "
      else
        basename "$(mocp -Q %file)"
    fi
else
    echo ""
fi
