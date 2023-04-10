#!/bin/bash

#awk -v min=1 -v max=5 'BEGIN{srand(); print int(min+rand()*(max-min+1))}'

num=$(( RANDOM % 4 ))
case $num in
        0) echo "The battle persists";;
        1) echo "The battle continues";;
        2) echo "There's no end to this";;
        3) echo "There's still more fighting to do";;
        4) echo "The fight rages on!"
esac
