#!/bin/bash

INPUT="$1"

if [ $INPUT == "mute" ]; then
	$(pactl set-sink-mute 0 toggle)
elif [ $INPUT == "up" ]; then
	VOL=$(pactl get-sink-volume 0 | cut -d ' ' -f 6 | grep -o "[0-9.]\+")
	if [ $((VOL)) -lt 100 ]; then
		$(pactl set-sink-volume 0 +5%)
	fi
	if [ $((VOL)) -gt 100 ]; then
		$(pactl set-sink-volume 0 100%)
	fi
elif [ $INPUT == "down" ]; then
	$(pactl set-sink-volume 0 -5%)
fi

kill -44 $(pidof dwmblocks)
