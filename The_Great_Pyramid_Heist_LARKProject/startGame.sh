#!/bin/bash
if [ $(tput lines) -lt 54 -o $(tput cols) -lt 175 ]; then
	echo -e "\nPlease enlarge your screen for the game to display properly.\n"
else
if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
cat .pyramidPhoto1
read -p "                                                                          Press [RETURN] to begin." "startGame"
#cat <<introScriptOld

#Following rumors of an unexplored pyramid in the desert, you begin your journey with a car ride out of the city.

#You then saddle up on your camel and begin combing the desert for hours.

#Hours became days.

#Days became weeks.

#Finally, just as you were about to give up and head back, a triangle-shaped shadow appears in the distance.

#You hop off of your camel, and peer up at the massive building towering above you.

#introScriptOld
#cat<<introScript

#The year is 2286 B.C.

#You are Abdelkader Nuru, a lawless scavenger searching for treasures to sell in the market.

#You're scouring the deserts of Egypt looking for treasures to steal, when you come across a massive pyramid.

#This is not just any pyramid.

#This is the great pyramid of Khufu, constructed some 500 years ago in the Old Kingdom of Egypt.

#You've heard tales of this place.

#Anyone who has ever entered the pyramid has never returned.

#Regardless, you approach the massive structure, which is now towering above you.

#Use "cd placeName" to move between areas.
	#+ "cd" is the command you use to move between "rooms" (folders).
	#+ The "placeName" after the command is an argument, which is something the command needs to be provided.
	#+ In this case, cd needs to be provided the name of the place (folder) you want to move to.
	#+ For example, use "cd pyramid" to enter the pyramid.
	#+ Note: You can use "cd .." to move to your previous "room", but don't do it now, or you'll leave the game folder!

#introScript

cat<<introScript

It is 2286 B.C. in the age of Ancient Egypt.

It is a prosperous time for the Old Kindgom of Egypt; agriculture is thriving, the population is growing,
and great structures have been built for the monarchs that the civilization celebrates.

One of these structures is the Great Pyramid of Giza, in which the riches of King Khufu remain.

You are Abdelkader Nuru, a scavenger struggling to support your family as you have been banished from the Kingdom for
crimes you had committed in the past.

In an attempt of desperation, you go out and try to hit big by stealing the treasures of King Khufu.

As you approach the Great Pyramid, you are met with a feeling of fear and anxiety with sinister undertones.

You ignore these feelings, remembering that your children share a piece of bread to survive.

You approach the pyramid.

# Use "cd [placename]" to move between areas in the pyramid.
        + "cd" is the command you use to move between "rooms" (folders).
        + The "placeName" after the command is an argument, which is something the command needs to be provided.
        + In this case, cd needs to be provided the name of the place (folder) you want to move to.
        + For example, use "cd pyramid" to enter the pyramid.
        + Note: You can use "cd .." to move to your previous "room", but don't do it now, or you'll leave the game folder!

introScript

#if [ -d pyramid ]
	#then
		#rm -rf pyramid
#fi
#mkdir pyramid

enteredPyramid="false"
enteredHallway="false"
keyCollected="false"
hiddenPassagewayAllowed="false"
enteredHiddenPassageway="false"
doorwayAllowed="false"
enteredDoorway="false"
buttonCombination=""
stairwellAllowed="false"
climbedStairwell="false"
helpedAssan="false"
enteredTomb="false"
tombSequenceBegun="false"
PS3="What would you like to do? (Type 1, 2, or 3): "
shezmuPathAllowed="false"
shezmuPathEntered="false"
holeInWallAllowedShezmu="false"
holeInWallEnteredShezmu="false"
shezmuKeyCollected="false"
ammitPathAllowed="false"
ammitPathEntered="false"
rubbleAmount=1865
holeInWallAllowedAmmit="false"
holeInWallEnteredAmmit="false"
ammitKeyCollected="false"
apophisPathAllowed="false"
apophisPathEntered="false"
holeInWallAllowedApophis="false"
holeInWallEnteredApophis="false"
apophisKeyCollected="false"

function cd() { # Redefine cd so that it prints desired messages when the user first enters a room.
	command cd "$@" || return
	if [ `pwd | grep pyramid$ | wc -l` -eq 1 -a $enteredPyramid = "false" ] # User enters pyramid for first time
		then
			source ../gameScripts/entryScript.sh
	fi
	if [ `pwd | grep pyramid/hallway$ | wc -l` -eq 1 -a $enteredHallway = "false" ] # User enters hallway for first time
		then
			source ../../gameScripts/hallwayScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway$ | wc -l` -eq 1 -a $enteredHiddenPassageway = "false" ]
		then
			source ../../../gameScripts/hiddenPassagewayScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway/.doorway57$ | wc -l` -eq 1 -a $enteredDoorway = "false" ]
		then
			source ../../../../gameScripts/doorwayScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway/.doorway57/stairwell$ | wc -l` -eq 1 -a $climbedStairwell = "false" ]
		then
			source ../../../../../gameScripts/stairwellScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway/.doorway57/stairwell/tombOfKhufu$ | wc -l` -eq 1 -a $enteredTomb = "false" ]
		then
			source ../../../../../../gameScripts/tombScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway/.doorway57/stairwell/tombOfKhufu/ammitsPath$ | wc -l` -eq 1 -a $ammitPathEntered = "false" ]
		then
			source ../../../../../../../gameScripts/ammitEntryScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway/.doorway57/stairwell/tombOfKhufu/ammitsPath/holeInWall$ | wc -l` -eq 1 -a $holeInWallEnteredAmmit = "false" ]
		then
			source ../../../../../../../../gameScripts/holeInWallAmmitScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway/.doorway57/stairwell/tombOfKhufu/shezmusPath$ | wc -l` -eq 1 -a $shezmuPathEntered = "false" ]
		then
			source ../../../../../../../gameScripts/shezmuEntryScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway/.doorway57/stairwell/tombOfKhufu/shezmusPath/holeInWall$ | wc -l` -eq 1 -a $holeInWallEnteredShezmu = "false" ]
		then
			source ../../../../../../../../gameScripts/holeInWallShezmuScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway/.doorway57/stairwell/tombOfKhufu/apophisPath$ | wc -l` -eq 1 -a $apophisPathEntered = "false" ]
		then
			source ../../../../../../../gameScripts/apophisEntryScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway/.doorway57/stairwell/tombOfKhufu/apophisPath/holeInWall$ | wc -l` -eq 1 -a $holeInWallEnteredApophis = "false" ]
		then
			source ../../../../../../../../gameScripts/holeInWallApophisScript.sh
	fi
}

function cat(){
	if [ `echo $@ | grep .sh | wc -l` -ge 1 ]; then
		echo -e "\nYou cannot read encounters.\n"
	else
		command cat "$@" || return
	fi
}

function rm(){
	echo -e "\nSorry, you can't remove files in this game.\n"
}

function ls(){
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway$ | wc -l` -eq 1 ]; then
		command ls "$@" | cat || return
	else
		command ls "$@"
	fi
}

function cp(){
	if [ `echo $1 | grep wine | wc -l` -eq 1 -o `echo $1 | grep ointment | wc -l` -eq 1 -o `echo $1 | grep perfume | wc -l` -eq 1 ]; then
		if [ `echo $2 | grep wine | wc -l` -eq 1 -o `echo $2 | grep ointment | wc -l` -eq 1 -o `echo $2 | grep perfume | wc -l` -eq 1 ]; then
			command cp "$@" || return
		fi
	else
		echo -e "\nSorry, you can't copy files here.\n"
	fi
}

function mv(){
	if [ `echo $1 | grep wine | wc -l` -eq 1 -o `echo $1 | grep ointment | wc -l` -eq 1 -o `echo $1 | grep perfume | wc -l` -eq 1 ]; then
		if [ `echo $2 | grep wine | wc -l` -eq 1 -o `echo $2 | grep ointment | wc -l` -eq 1 -o `echo $2 | grep perfume | wc -l` -eq 1 ]; then
			command mv "$@" || return
		fi
	else
		echo -e "\nSorry, you can't move files here.\n"
	fi
}
function vim(){	
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway/.doorway57/stairwell/tombOfKhufu/ammitsPath$ | wc -l` -eq 1 ]
		then
		command vim "$@" || return
	else
		echo -e "\nSorry, you can't use that here.\n"
	fi
}
fi
fi
