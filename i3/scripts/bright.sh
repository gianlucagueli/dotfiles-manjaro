#!/bin/bash

bright="$(brightnessctl g)"
percentage=$((bright / 4))

killall notify-send
notify-send -t 3000 -h int:value:$percentage "Brightness"
