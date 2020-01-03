if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  neofetch
  setxkbmap -layout us,latam
  setxkbmap -option 'grp:alt_shift_toggle'
  #curl -L http://git.io/ryucolor
  startx
fi
