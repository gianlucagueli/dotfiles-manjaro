#!/bin/sh

CONNECTED_STATUS="connected"

LEFT_MONITOR=$(xrandr | grep DP-1-1 | awk '{print $2}')
RIGHT_MONITOR=$(xrandr | grep DP-1-3 | awk '{print $2}')
OFFICE_MONITOR=$(xrandr | grep HDMI-1 | awk '{print $2}')

if [ "$LEFT_MONITOR" = "$CONNECTED_STATUS" ] && [ "$RIGHT_MONITOR" = "$CONNECTED_STATUS" ]; then
	$HOME/.screenlayout/home-setup.sh
elif [ "$OFFICE_MONITOR" = "$CONNECTED_STATUS" ]; then
	$HOME/.screenlayout/office-setup.sh
else
	$HOME/.screenlayout/away-setup.sh
fi
