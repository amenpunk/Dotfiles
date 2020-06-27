this is progrram for show notify
#most import thing in the system

CURRENT= acpi -b | awk -F'[,:%]' '{$3}'
max=98
#if [ "$CURRENT" -ge $max ]; then
#  notify-send "Bateria casi llena"
#fi

echo $CURRENT, $max
