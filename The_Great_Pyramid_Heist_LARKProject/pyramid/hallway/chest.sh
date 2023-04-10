#!/bin/bash

if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
if [ $keyCollected = "false" ]
	then
cat <<chestLocked

This chest is locked.

Perhaps you've missed something?

Use the ".." argument with the "cd" command to move back a room.

chestLocked

#touch ../key.sh

#chmod +x ../key.sh

#cat <<keyScript > ../key.sh

#cat <<keyCollect

#After a thorough search of the room you first entered in, you find a rusty metal key laying in the corner.

#You pick it up and store it in your pocket.

#keyCollect

#rm -rf key.sh

#cat <<keyAcquired > ./hallway/chest.sh
elif [ $keyCollected = "true" ]
	then
cat <<chestUnlocked

You brush off the dust caked over the keyhole and insert the key.

It turns, and the chest creaks open.

Inside, you find a stone tablet with what seems to be some writing engraved on it.

It reads,

"Use "-a" to uncover what otherwise may not be seen."

Hmm... perhaps this is regarding your "ls" command?

chestUnlocked

hiddenPassagewayAllowed="true"
doorwayAllowed="true"

#touch tablet

#cat <<tabletContents > tablet

#USE "-a" TO UNCOVER WHAT IS HIDING.

#Hmm... perhaps this is another option for your "ls" command?
fi
fi
