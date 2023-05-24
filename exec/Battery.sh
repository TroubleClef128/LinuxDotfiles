#!/bin/bash

RAW=$(acpi)
STATUS=$(echo $RAW | cut -d ' ' -f 3)
if [ $STATUS == "Not" ]; then
   RAW=$(echo $RAW | cut -d ' ' -f 5)
   STATUS=$(echo $RAW | cut -d ' ' -f 3)
else
   RAW=$(echo $RAW | cut -d ' ' -f 4)
fi
NUM=`echo "$RAW" | grep -o "[0-9.]\+"`

# Add the icon to the string
if [ $STATUS == "Charging," ]; then
       ICON="  "	
elif [ $STATUS == "not" ]; then
       ICON="  "	
elif [ $STATUS == "Full," ]; then
	ICON="   "
elif [ $((NUM)) -gt 78 ]; then
	ICON="   "
elif [ $((NUM)) -gt 57 ]; then
	ICON="   "
elif [ $((NUM)) -gt 28 ]; then
	ICON="   "
elif [ $((NUM)) -gt 10 ]; then
	ICON="   "
else
	ICON="!   "
fi

RAW=${RAW%,}
OUTPUT="$ICON $RAW"
echo "$OUTPUT"
