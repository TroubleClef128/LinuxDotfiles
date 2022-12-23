#!/bin/bash

POKEMON=$(($RANDOM % 493 + 1))
SHINY=$(($RANDOM % 250))
#COMMAND="/bin/pokemonshow $POKEMON "

if [ $SHINY -eq 0 ]; then
	#COMMAND="$COMMAND --shiny"
	echo "$POKEMON --shiny"
else
	echo "$POKEMON"
fi

#$("$COMMAND")
