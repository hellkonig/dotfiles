#!/bin/bash

left(){
    %{c}%{B#181E2A}%{F#789FBF}Arch Linux
}

mid(){
    %{l}Wifi    
}

right(){
    %{r}$(date "+%Y-%m-%d %H:%M:%S")
}

while :; do 
    echo "$left$mid$right"
sleep 1
done
