#!/bin/sh
# Dylan's Lemonbar Clock
# Very heavily modified by APIUM

while :; do
   echo "%{c}$(date "+%a %b %d, %T")"

# try to get it to hide of mpv fullscreen

     if [ -z "$WINDOWID" ] ; then
     WINDOWID=$(xdotool search --name bar)
     if [ ! -z "$WINDOWID" ] ; then
         xprop -id $WINDOWID -f _NET_WM_STATE 32a -set _NET_WM_STATE _NET_WM_STATE_STICKY,_NET_WM_STATE_BELOW
         xprop -id $WINDOWID -f _NET_WM_WINDOW_TYPE 32a -set _NET_WM_WINDOW_TYPE _NET_WM_WINDOW_TYPE_NORMAL
         fi
     fi
     sleep 1s
 done |

lemonbar -d -b -g "300x35+1130+35" -f "roboto:size=8" -o 0 -f "fontawesome:size=8" -o 0 -B "#FCFCFC" -F "#2E2E33" & lemonbar -g 2560x35 -B{#AAFFFFFF} -b

