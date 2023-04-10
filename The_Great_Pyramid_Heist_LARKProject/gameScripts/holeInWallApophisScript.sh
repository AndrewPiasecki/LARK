#!/bin/bash

if [ $holeInWallAllowedApophis = "false" ]; then
	echo -e "\nYou aren't allowed here yet.\n"
	cd ..
elif [ $holeInWallAllowedApophis = "true" ]; then
	source ../../../../../../../../gameScripts/Apophis.sh
	holeInWallEnteredApophis="true"
fi
