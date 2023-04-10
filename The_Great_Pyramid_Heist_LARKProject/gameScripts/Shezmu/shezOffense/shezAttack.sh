#!/bin/bash

#first a randomizer for the move chosen
turn=0
if [ $skip -eq 1 ]; then
	source ../../../../../../../../gameScripts/Shezmu/shezOffense/drinkWine.sh
else
	#if [ $move -eq 2 ]; then
		#move=0
	#else
		move=$(( $RANDOM % 2 + 1 ))
		case "$move" in
		1)
			source ../../../../../../../../gameScripts/Shezmu/shezOffense/slash.sh
			;;
		2)
			source ../../../../../../../../gameScripts/Shezmu/shezOffense/drinkWine.sh
			;;
		3) 
			source ../../../../../../../../gameScripts/Shezmu/shezOffence/roar.sh
			;;
		esac
	#fi
fi
