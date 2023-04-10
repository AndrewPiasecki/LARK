if [ $stairwellAllowed = "false" ]
	then
		echo "You aren't allowed here yet."
		cd ..
elif [ $stairwellAllowed = "true" ]
	then
cat <<stairwellScript

You climb the stairwell and reach the next floor of the pyramid.

You're one step closer from escaping this forsaken place!

However, something in you knows it won't be easy...

You enter into a large area with what look to be tombs on either side.

As you begin to inspect the countless rows of resting places, you here a rustling noise.

You turn around and are met by... a walking, talking skeleton.

Startled, you jump backwards, as the skeleton just keeps repeating,

"MY NAME IS ASSAN SYED. IN WHAT SLOT DOES MY FATHER LIE?"

# Use "grep 'phrase'" to search for a specific string in a piece of text.
	+ For example, "grep 'hello'" would search for and print lines containing the phrase "hello".
	+ Note: This command cannot be used alone. Use a different command followed by a pipe "|" to first read the text you'd like to search.

# Use "head [-numberOfLines]" to print out the first lines of a piece of text.
	+ For example, "head -15" would print the first 15 lines of a piece of text.
	+ Note: numberOfLines is optional. Simply using "head" will print the default of 10 lines.
	+ Note: This command cannot be used alone. Use a different command followed by a pipe "|" to first read the text you'd like to search.

# Use "tail [-numberOfLines]" to print out the last lines of a piece of text.
	+ For example, "tail -15" would print the last 15 lines of a piece of text.
	+ Note: numberOfLines is optional. Simply using "tail" will print the default of 10 lines.
	+ Note: This command cannot be used alone. Use a different command followed by a pipe "|" to first read the text you'd like to search.

stairwellScript

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

#cp ../../../../../gameScripts/namesEncrypted ./tombList
#cp ../../../../../gameScripts/assanSyed.sh ./assanSyed.sh
		climbedStairwell="true"
fi
