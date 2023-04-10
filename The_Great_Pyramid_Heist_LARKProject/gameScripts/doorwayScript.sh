#!/bin/bash
if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
if [ $doorwayAllowed = "false" ]
	then
		echo "You aren't allowed here yet."
		cd ..
elif [ $doorwayAllowed = "true" ]
	then
cat <<doorwayScript

You pass dozens of illusionary doorways to find one, real doorway.

You pass through it, entering a small room.

Within it, you find a tablet that seems to be encoded with an ancient Egyptian cipher.

Looking past that tablet, there is a doorway blocked by a gate with four buttons beside it.

Thankfully, being the prepared explorer you are, you've brought a journal contains cipher characters and their English counterparts.

You set your book on the ground to compare to the tablet.

# Use "cat" to read text.
	+ The syntax is "cat (fileName)"

# Use "|" (known as the "pipe" character) between commands to "combine" them.
	+ The syntax is "command1 [-(option1)(option2)] | command2 [-(option1)(option2)]"
		- Note: brackets [] indicate optional inputs. Some commands do not require options.

# Use "tr" to "translate" characters. This utility takes text input, and transforms characters into specified counterparts.
	+ The syntax is "tr '(originalCharacter1)[(originalCharacter2)...]' '(translatedCharacter1)[(translatedCharacter2)...]'"
		- For example, "tr 'abc' 'ABC'" would translate any lowercase a, b, or c in a text to its capitalized counterpart.
		- As another example, "tr 'yL' 'eH'" would replace every "y" with "e" a,d "L" with "H". When used with the phrase "Lyllo tLyry", it would output "Hello tHere". 
	+ Note: This command can't be used alone. Use the pipe "|" operator to first read the tablet with cat, then translate its contents with tr.
		- Example command: "cat tablet | tr 'ABCDE' 'HELLO'"

doorwayScript

#cat <<translations >translationBook

#Y -> A
#9 -> B
#U -> C
#Z -> D
#X -> E
#C -> F
#B -> G
#T -> H
#4 -> I
#5 -> J
#A -> K
#3 -> L
#K -> M
#S -> N
#2 -> O
#1 -> P
#6 -> Q
#L -> R
#J -> S
#V -> T
#8 -> U
#F -> V
#H -> W
#7 -> X
#N -> Y
#Q -> Z

#translations

#echo "FOUR TWO THREE ONE" | tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' 'Y9UZXCBT45A3KS216LJV8FH7NQ' > tablet
#cat tablet | tr 'Y9UZXCBT45A3KS216LJV8FH7NQ' 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' > tabletDecrypted

#cp ../../../../gameScripts/button1.sh ./button1.sh
#cp ../../../../gameScripts/button2.sh ./button2.sh
#cp ../../../../gameScripts/button3.sh ./button3.sh
#cp ../../../../gameScripts/button4.sh ./button4.sh

enteredDoorway="true"
fi
fi
