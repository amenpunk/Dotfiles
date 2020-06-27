#!/bin/bash

op=$1
#Este es el número de tu tarjeta
#en mi caso la 0 es la interna
#la numero dos es el bluez
#puedes identificarla con el comando
#pactl list
tar=3
tartwo=3

exec pactl set-sink-volume $tar $op 
exec pactl set-sink-volume $tartwo $op 
#kkexec (pactl set-sink-volume '$tartwo $op') 

if [ $1 == 3 ]
then
  exec (pactl set-sink-mute $tartwo toggle) 
  exec (pactl set-sink-mute $tar toggle) 
fi



