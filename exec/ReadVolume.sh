#!/bin/bash

VOLUME=$(pactl get-sink-volume 0 | cut -d '/' -f 2 | sed 's/ //g')
MUTE=$(pactl get-sink-mute 0 | cut -d ' ' -f 2)

if [ $MUTE == "yes" ]; then
	ICON="婢"
else
	ICON="墳"
fi

echo "$ICON  $VOLUME"
