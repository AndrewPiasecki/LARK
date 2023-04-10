#!/bin/bash

if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
if [ $keyCollected = "false" ]
	then
cat <<keyScript

After a thorough search of the room, you find a rusty metal key laying in the corner.

You pick it up and store it in your pocket.

keyScript

		keyCollected="true"

elif [ $keyCollected = "true" ]
	then
		echo "You've already collected this item."
fi
fi
