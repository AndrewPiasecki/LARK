#!bin/bash

res=$(( $res*1.5 ))
Damage=2

BossHealth=$(( $BossHealth-$Damage ))

source ../../../../../../../../gameScripts/Shezmu/Status.sh
