#!/bin/bash

if [ $holeInWallAllowedShezmu = "false" ]; then
	echo -e "\nYou aren't allowed here yet.\n"
	cd ..
elif [ $holeInWallAllowedShezmu = "true" ]; then
	source ../../../../../../../../gameScripts/Shezmu/Shezmu.sh
	holeInWallEnteredShezmu="true"
fi
