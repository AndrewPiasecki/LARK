#!/bin/bash

if [ $Health -le 0 ]
then
cat<<Message

You have been slain by Shezmu, the deity of Blood and Wine

"Poor little thief, you should learn to not mess with gods."

Run "Shezmu.sh" to try again.
Message
return
elif [ $BossHealth -le 0 ]
then
cat<<Message

You have slain Shezmu, the deity of Blood and Wine

Shezmu says, "Your punishment with arrive in time, Adbelkader."

You finish him by cutting his head off and kicking it away.

You collect Shezmu's key.

Message
shezmuKeyCollected="true"
return
else
num=$(( RANDOM % 4 ))
case $num in
        0) echo "The battle persists";;
        1) echo "The battle continues";;
        2) echo "There's no end to this";;
        3) echo "There's still more fighting to do";;
        4) echo "The fight rages on!" ;;
esac
fi

cat<<Health
---------------------------------------------------
Your Health=$Health
Shezmu's Health=$BossHealth
---------------------------------------------------
Health

#echo "Turn: $turn Move: $move Skip: $skip"

case $turn in
	0)cat<<you
Your Turn. Run a weapon script to attack Shezmu.
you
;;
	1)cat<<boss
It's Shezmu's Turn
boss
source ../../../../../../../../gameScripts/Shezmu/shezOffense/shezAttack.sh
;;
esac
