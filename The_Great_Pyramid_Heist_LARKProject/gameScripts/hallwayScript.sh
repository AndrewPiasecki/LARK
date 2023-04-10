#!/bin/bash

cat <<hallwayScript

From the main room of the pyramid, you walk into a long, barren passageway.

There doesn't seem like any way out...

What if you're trapped here forever?

hallwayScript

#touch chest.sh
#chmod +x chest.sh

#cat <<hallwayChest > chest.sh

#cat <<chestLocked

#This chest is locked.

#Perhaps you've missed something?

#Use the ".." argument with the "cd" command to move back a room.

#chestLocked

#touch ../key.sh

#chmod +x ../key.sh

#cat <<keyScript > ../key.sh

#cat <<keyCollect

#After a thorough search of the room you first entered in, you find a rusty metal key laying in the corner.

#You pick it up and store it in your pocket.

#keyCollect

#rm -rf key.sh

#cat <<keyAcquired > ./hallway/chest.sh

#cat <<chestUnlocked

#You brush off the dust caked over the keyhole and insert the key.

#It turns, and the chest creaks open.

#Inside, you find a stone tablet with what seems to be some writing engraved on it.

#Use "cat tablet" to read it.

#chestUnlocked

#hiddenPassagewayAllowed="true"

#touch tablet

#cat <<tabletContents > tablet

#USE "-a" TO UNCOVER WHAT IS HIDING.

#Hmm... perhaps this is another option for your "ls" command?

#tabletContents

#keyAcquired

#mkdir ./hallway/.hiddenPassageway

#keyScript

#hallwayChest

enteredHallway="true"
