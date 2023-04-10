#!/bin/bash
if [ $apophisKeyCollected = "true" ]; then
	echo -e "\nYou've already defeated Apophis.\n"
else
if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
../../../../../../../../gameScripts/Apophis.exe
fi
fi
