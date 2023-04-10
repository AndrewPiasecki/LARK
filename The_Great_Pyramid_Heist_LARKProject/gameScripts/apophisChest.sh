#!/bin/bash

if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else

echo ""
read -p "What is the password? " userResponse

if [ $userResponse = "SHAPESHIFT" ]; then
	echo -e "\nThe chest pops open, revealing your third and final key!\n"
	apophisKeyCollected="true"
else
	echo -e "\nIncorrect.\n"
fi
fi
