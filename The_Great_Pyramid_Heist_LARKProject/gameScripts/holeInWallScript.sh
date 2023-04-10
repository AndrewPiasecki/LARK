#!/bin/bash

if [ $holeInWallAllowed = "true" ]; then
cat<<holeInWallEntryScript

Story elements about Ammit appearing here

holeInWallEntryScript
elif [ $holeInWallAllowed = "false" ]; then
	echo -e "\nYou aren't allowed here yet.\n"
	cd ..
fi
