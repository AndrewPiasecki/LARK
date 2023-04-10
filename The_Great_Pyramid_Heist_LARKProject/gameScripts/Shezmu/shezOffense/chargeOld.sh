#!/bin/bash

cat <<Warning
"YOU BETTER BE READY LITTLE THIEF,
I'M COMING YOUR WAY NEXT!"

*Hide quickly! You have 20 seconds before Shezmu charges at you!
Warning

cd ~/Lark/Shezmu/shezOffense/room

currPath=$(pwd)

case $currPath in
	*/stonePillar*)cat<<stone
***CRASH***

Shezmu dashed right into the stone pillar!
He seems to be dazed, STRIKE HIM!!!
stone
	skip=1
	BossDamage=1 ;;
	*/stoneWall)cat<<stonewall
***BANG***

Shezmu rammed right into the stone wall!
He's laying on his back with his eyes rolled up.
HIT HIM!
stonewall
	skip=1
	BossDamage=1;;
	*/vase*)cat<<vase
**CRASH**

Shezmu charged right through the vase you were behind!
Your body got flinged across the room as a result
vase
	Health=$(( $Health-$BossDamage ))
	skip=0
	BossDamage=1;;
	*/textiles)cat<<text
"Hide behind your pretty colors and patterns all you want HAHAHAHA
HERE I COME!"

***CRUNCH***

Shezmu pinched you against the wall with all his might!
Your back doesn't feel straight anymore after that

*EXTRA DAMAGE
text
	Health=$(( $Health-$BossDamage-3 ))
	skip=0
	BossDamage=1;;
esac
