#!/bin/bash

if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
if [ $stairwellAllowed = "true" ]
	then
		echo -e "\nThe buttons have retracted into the wall and are no longer pressable.\n"
	else
		echo "Button 2 pressed."
		buttonCombination+=2;
		echo "Current combination: $buttonCombination"
		if [ `echo $buttonCombination | wc -c` -eq 5 -a $buttonCombination = "4231" ]
			then
				echo -e "\nThe combination worked! The gate rises before you, leading to a set of stairs.\n\nClimb them to reach the second floor of this mysterious structure.\n"
				#mkdir stairwell
				stairwellAllowed="true"
				echo -e "\nThat was a lot to type though... In order to not have to type that long translation command out, you can make an alias to make it easier to use.\n"
cat<<aliasScript

#Use an alias to repeat lengthy commands more easily.
	+ The syntax is "alias alias_name='(command)'"
	+ For instance, you can use "alias translate=tr 'Y9UZXCBT45A3KS216LJV8FH7NQ' 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" will allow you to run the long "tr" line just by typing "translate."
		- So, once you do this, you could use "cat tablet | translate" instead of the long command you used before.
		- You can use the up arrow keys to view previous commands, that way you don't have to type it all out again just to create the alias.

aliasScript
			elif [ `echo $buttonCombination | wc -c` -eq 5 ]
				then
					echo -e "\nHmm, that didn't seem to work. Try again.\n"
					buttonCombination="";
		fi
fi
fi
