#!/bin/bash

if [ $helpedAssan = "false" ]
		then
			echo -e "\nAssan is blocking your way. You must help him find his father. Perhaps you should search for his last name?\n"
			cd ..
elif [ $helpedAssan = "true" ]
		then
cat<<tombScript

Upon entering the tomb, you take notice of a sarcophagus lying in the center of the room.

This must be the one that holds the riches you desire.

Rumor has it that this tomb contains every imaginable treasure: precious jewelry, powerful weapons, and mountains of gold.

Finally, the only thing that stands before you and a lifetime of wealth is the lid of the sarcophagus.

tombScript

enteredTomb="true"
fi
