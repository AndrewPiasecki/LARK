#!/bin/bash
Bleed=$(( RANDOM % 2 ))
case $Bleed in
        0)Bleed=2;;
        1)Bleed=0;;
esac

Damage=$(( 3+$Bleed ))

BossHealth=$(( $BossHealth-$Damage ))

source ../../../../../../../../gameScripts/Shezmu/Status.sh
