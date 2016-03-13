#!/bin/sh
# Dylan's Lemonbar Clock

battery () {
    battery="$(</sys/class/power_supply/BAT0/capacity)"
    charging="$(</sys/class/power_supply/BAT0/status)"

    case "$battery" in
        [0-9]|10)
            battery="${battery}%  "
        ;;

        1[0-9]|2[0-5])
            battery="${battery}%  "
        ;;

        2[0-6]|3[0-9]|4[0-9]|50)
            battery="${battery}%  "
        ;;

        5[1-9]|6[0-9]|7[0-5])
            battery="${battery}%  "
        ;;

        7[6-9]|8[0-9]|9[0-9]|100)
            battery="${battery}%  "
        ;;
    esac

    [ "$charging" == "Charging" ] && \
        battery="Charging  $battery"

    printf "%s" "$battery"
}

wifi(){
    ping -c 1 8.8.8.8 >/dev/null 2>&1 && echo "   Connected" || echo "   Disconnected"    
}

while :; do
    echo "%{l}$(wifi) %{c}$(date "+%a %d %b %l:%M %p")%{r}$(battery)     %{r}"
    sleep 2s
done |

lemonbar -d -b -g "1000x75+1100+30" -f "roboto:size=8" -f "fontawesome:size=8" -B "#FCFCFC" -F "#2E2E33" & lemonbar -g 2800x80 -B{#AARRGGBB} -b
