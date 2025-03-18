#!/bin/bash

volume="$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))"

killall notify-send
notify-send -t 3000 -h int:value:$volume "Volume"
