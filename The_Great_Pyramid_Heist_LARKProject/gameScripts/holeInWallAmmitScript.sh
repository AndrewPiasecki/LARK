#!/bin/bash

if [ $holeInWallAllowedAmmit = "false" ]; then
	echo -e "\nYou aren't allowed here yet.\n"
	cd ..
elif [ $holeInWallAllowedAmmit = "true" ]; then
	source ../../../../../../../../gameScripts/Ammit.sh
	holeInWallEnteredAmmit="true"
fi
