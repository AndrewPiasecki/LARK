#!/bin/bash

if [ $WineCounter -eq 0 ]
then
BossDamage=$(( $BossDamage+2 ))
WineCounter=$(( $WineCounter+1 ))

else if [ $WineCounter -lt 6 -a $(($WineCounter % 2)) -eq 1 ]
then
BossDamage=$(( $BossDamage+2 ))
WineCounter=$(( $WineCounter+1 ))

else if [ $WineCounter -ne 0 -a $WineCounter -lt 6 -a $(($WineCounter % 2)) -eq 0 ]
then
BossDamage=$(( $BossDamage+2 ))
WineCounter=$(( $WineCounter+1 ))
source ../../../../../../../../gameScripts/Shezmu/shezOffense/charge.sh

else
skip=1
WineCounter=0
fi
fi
fi
source ../../../../../../../../gameScripts/Shezmu/Status.sh
