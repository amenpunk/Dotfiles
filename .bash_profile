xmodmap ~/.Xmodmap

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  neofetch
  #curl -L http://git.io/ryucolor
  startx
# setxkbmap -layout us,latam
# setxkbmap -option 'grp:alt_shift_toggle'
fi
. "/home/ming/.deno/env"
