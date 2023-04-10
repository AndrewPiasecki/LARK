#!/bin/bash

if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
rubbleAmount=$(($rubbleAmount-1))
if [ $rubbleAmount -ge 1 ]; then
	echo -e "\nYou clear a rock. There are $rubbleAmount rock(s) remaining.\n"
elif [ $rubbleAmount -eq 0 ]; then
	echo -e "\nAll the rocks have been cleared! You may now move forward.\n"
	holeInWallAllowedAmmit="true"
elif [ $rubbleAmount -lt 0 -a $rubbleAmount -gt -100 ]; then
	cat /dev/null
elif [ $rubbleAmount -eq -100 ]; then
	echo -e "\nYou've cleared all the rocks, but it seems your for loop indices may have been incorrect. Use \"CTRL+C\" to exit your loop if necessary."
else
	cat /dev/null
fi
fi
