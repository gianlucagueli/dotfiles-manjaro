if [ "$1" ]; then
	xrandr --output DP-1-1 --brightness $1 --output DP-1-3 --brightness $1
else 
	echo "Argument not recognized: accepts values in the interval: [0-1]"
fi
