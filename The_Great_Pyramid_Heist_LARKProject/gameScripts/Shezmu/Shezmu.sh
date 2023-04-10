#!/bin/bash
if [ $shezmuKeyCollected = "true" ]; then
	echo -e "\nYou've already defeated Shezmu.\n"
else
if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else

cat<<Introduction
As you enter the vacant and dark room with Shezmu you are met with an ominous 
feeling growing behind you.

Your nape tingles,
Your hair stands up,
Your hands buildup with sweat,
You turn around...
Oh no...

The eager and helpful Shezmu has gone through a metamorphosis.

Once normal, he is now 10 feet tall with the head of a Lion
possessing a butcher knife and breathing down onto you. 

"What's wrong Abdelkader? Have I done something to disturb you?"

"You shouldn't have let me out of my coffin you dirty thief
as repayment for your sins, I will take your body and soul and make a great wine!"

Shezmu begins to charge you! 

You find weapons on the ground from slain warriors before you. Perhaps you can use them?

Introduction

Health=30
BossHealth=50
Damage=1
BossDamage=1
Res=1
WineCounter=0
skip=0
move=1
turn=1
#mkdir ~/Lark/Shezmu/shezOffense/room
#mkdir ~/Lark/Shezmu/shezOffense/room/stonePillar
#mkdir ~/Lark/Shezmu/shezOffense/room/stonePillar2
#mkdir ~/Lark/Shezmu/shezOffense/room/vase
#mkdir ~/Lark/Shezmu/shezOffense/room/vase2
#mkdir ~/Lark/Shezmu/shezOffense/room/stoneWall
#mkdir ~/Lark/Shezmu/shezOffense/room/textiles

source ../../../../../../../../gameScripts/Shezmu/Status.sh

fi
fi
