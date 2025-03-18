#!/bin/bash

current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if [ "$current_layout" = "us" ]; then
    setxkbmap it
    notify-send -t 1000 "Keyboard layout (IT)"
else
    setxkbmap us
    notify-send -t 1000 "Keyboard layout (US)"

fi
