#!/bin/bash

if [ $apophisPathAllowed = "false" ]; then
	echo -e "\nYou aren't allowed here yet.\n"
	cd ..
elif [ $apophisPathAllowed = "true" ]; then
cat<<apophisEntryScript

You enter the hole in Khufu's tomb left by the third spirit.

"Why did you open it, Abdelkader? Why? Now you must face my wrath!"

"But first, you must replace the name of my nemesis Ra with my own, Apophis, on that tablet."

"I can't stand Ra getting praise, all must bow to me!"

"Only then will I allow you to face me."

# Use "sed" (Stream Editor) to complete this task efficiently.
	+ The syntax is "sed [options] '[sedCommands]' (sourceFileName)"
	+ The "-i" option with sed allows you to edit a file with commands.
	+ The "s" sed command will allow you to substitute one piece of text for another. The syntax is 's/replacementText/originalText/[flags]'
		-  The "g" flag with the "s" sed command makes it so every match in the file gets replaced, not just the first.
	+ Sed commands are separated by forward-slashes (/).
	+ As an example, to replace every instance of "hello" with "goodbye" in a text file named "textFile", we would use "sed -i 's/hello/goodbye/g' textFile"

apophisEntryScript

apophisPathEntered="true"

fi
