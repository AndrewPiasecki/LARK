#!/bin/bash

boop=2
baap=0

if [ $baap -lt  6 && $(( $baap % 2 )) -eq 1 ]
then
boop=$(( $boop+2 ))
baap=$(( $baap+1 ))
fi
