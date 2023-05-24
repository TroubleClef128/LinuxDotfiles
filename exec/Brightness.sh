#!/bin/bash 

direction=$1

PREV=$(brightnessctl -m)
PREV=$(echo $PREV| cut -d ',' -f 4)
PREV=${PREV%\%}

if [ "$direction" == "up" ]
then
	if [ $((PREV)) -gt 39 ]
	then
		$(brightnessctl set +20%)
	elif [ $((PREV)) -gt 19 ]
	then
		$(brightnessctl set +10%)
	else
		$(brightnessctl set +5%)
	fi
elif [ "$direction" == "down" ]
then
	if [ $((PREV)) -gt 41 ]
	then
		$(brightnessctl set 20%-)
	elif [ $((PREV)) -gt 21 ]
	then
		$(brightnessctl set 10%-)
	elif [ $((PREV)) -gt 0 ]
	then
		$(brightnessctl set 5%-)
	fi
fi
