#!/bin/bash
if [ $hiddenPassagewayAllowed = "false" ]
	then
		echo "You aren't allowed here yet."
		cd ..
elif [ $hiddenPassagewayAllowed = "true" ]
	then
cat <<hiddenPassagewayScript

The option you found on that tablet acted as a powerful magic spell.

It made your torch shine brighter than it ever did before, allowing you to see hidden objets (tablets, encounters, or even rooms!)

You find a narrow break in the stone walls, and squeeze your body through to the other side.

# Use "ls -a" to view hidden files/directories.
	+ Note: You can combine options together by simply using their corresponding names after the dash (For example: "ls -aF")
	+ The syntax is "commandName -(option1)(option2)..."
	+ For example, you can use "ls -aF" to view hidden contents as well as the suffixes (\/ for folders, * for scripts...) you've seen before.
		- When using the "-a" option, "." and ".." mean "current room" and "previous room", respectively.

hiddenPassagewayScript
		enteredHiddenPassageway="true"
		#source ../../../gameScripts/createDoors.sh
fi
