date1=`date +%s`; while true; do 
figlet -f ~/Scripts/fonts/3d.flf "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)" | lolcat
# figlet -f ~/Scripts/fonts/starwars.flf "Bebote"
  #| lolcat
done
