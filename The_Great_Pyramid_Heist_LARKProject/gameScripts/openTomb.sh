#!/bin/bash
if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
if [ $tombSequenceBegun = "false" ]; then
tput smcup
clear
tput setab 1
clear
sleep 1
tput setab 0
clear
sleep 1
tput setab 4
clear
sleep 1
tput setab 0
clear
sleep 1
tput setab 3
clear
sleep 1
tput setab 0
clear
tput rmcup

cat<<tombOpening

The ground shakes as you attempt to open the tomb.

In a flash, three spirits fly out from the small openeing you've made, crashing into the walls of the crypt.

You are rightfully in shock; but as the dust settles, you peek through the small gap see the precious treasures inside glisten from the light of your torch.

The loot you've traveled all this way for is so close... for a moment, it distracts you from all that just happened...

However, the tomb's lid moves no further; the treasure is still unreachable.

Shortly afterward, you notice three keyholes within Khufu's resting place.

You realize you need to track down the three spirits and defeat them if you want to access the riches within.

tombOpening

tombSequenceBegun="true"
shezmuPathAllowed="true"
apophisPathAllowed="true"
ammitPathAllowed="true"

elif [ $tombSequenceBegun = "true" ]; then
	if [ $ammitKeyCollected = "true" -a $shezmuKeyCollected = "true" -a $apophisKeyCollected = "true" ]; then
cat<<endGameScript

You aquire the third key.....

Thinking you have everything you need, you go back to the tomb with the three keyholes.

You push them all in, hoping that this is the end of your journey. Your eyes glimmer as the lid of the tomb starts to shake open in front of you.

You find yourself confronted into a massive pile of gold, jewelry, and food. Befitting loot for a thief! 

This will surely help you and your family survive these harsh times. You dive into the crypt and start filling your pockets and satchel.

Suddenly, the lid above you slides shut, and slowly, the room around you sees the gold change into sand, and the bright shine into dark shadows.

You expect Khufu to come out as this is his tombs' treasure, but you hear a loud, yet distant laugh. 

"You are now forever trapped in the Duat, you thief. Your heart is surely unbalanced as you tried to steal from a pharoah."

"Shame on you! Now it is time to repent.."

You roam the lands of the sand for all of eternity, wondering of your family and regretting your selfishness.

For a moment, you achieved your wildest dreams of becoming the richest man in Egypt, but now you only possess the dark, desolate desert...

████████╗██╗  ██╗███████╗    ███████╗███╗   ██╗██████╗ 
╚══██╔══╝██║  ██║██╔════╝    ██╔════╝████╗  ██║██╔══██╗
   ██║   ███████║█████╗      █████╗  ██╔██╗ ██║██║  ██║
   ██║   ██╔══██║██╔══╝      ██╔══╝  ██║╚██╗██║██║  ██║
   ██║   ██║  ██║███████╗    ███████╗██║ ╚████║██████╔╝
   ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚══════╝╚═╝  ╚═══╝╚═════╝ 
                                                       
endGameScript
	source ../../../../../../exitGame.sh
	else
		echo -e "\nYou haven't collected all the keys yet. Come back when you have them all!\n"
	fi
fi
fi
