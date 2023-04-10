#!/bin/bash

cat<<slash
Shezmu grabs his knife and slashes towards you
You try to dodge, but your arm gets cut in the process.
slash

BossDamage=$(( 5-$Res ))

Health=$(( $Health-$BossDamage ))


source ../../../../../../../../gameScripts/Shezmu/Status.sh

