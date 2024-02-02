
while true; do
   
    #generate random number
    num=$(( RANDOM % 20))
    if [ $num -eq 0 ]; then
        killall swaybg
        # notify-send -t 500 "killed swaybg" 
    fi 
    swaybg -i $(find /home/voy/space/waypaper/ -type f | shuf -n 1) -m fill &

    sleep 240
done