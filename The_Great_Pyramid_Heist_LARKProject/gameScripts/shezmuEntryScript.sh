#!/bin/bash

if [ $shezmuPathAllowed = "true" ]; then
cat<<shezmusPathEntryScript

You enter through the large cavity left behind by the first spirit.

The spirit of Shezmu screams, "My previous wines, perfumes and ointments are scattered all over the floor!! Sort them for me; only then may you face me..."

# Use "mv" to move objects to different containers (folders).
	+ The syntax is "mv (originalFilePath) (newFilePath)"
		- For example, if you have an object named "pencil" and a folder named "backpack", "mv pencil backpack" would put it in the container.

shezmusPathEntryScript

shezmuPathEntered="true"

elif [ $shezmuPathAllowed = "false" ]; then
	echo -e "\nYou aren't allowed here yet.\n"
	cd ..
fi
