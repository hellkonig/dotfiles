#!/bin/sh

clock() {
    date +%H:%M:%S
}

while true; do
    echo "%{c}%{F#FFFF00}%{B#0000FF} $(clock) %{F-}%{B-}"
    sleep 1
done
