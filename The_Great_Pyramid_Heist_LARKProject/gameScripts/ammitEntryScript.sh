#!/bin/bash

if [ $ammitPathAllowed = "true" ]; then
cat<<ammitEntryScript

From Khufu's tomb, you now enter the second path.

The spirit ahead of you beckons, "HOW DARE YOU DISTURB MY MASTER'S TOMB?"

You catch a glimpse of the ghostly figure.

It has the head of a crocodile, the torso of a leopard, and the legs of a hippopotamus...

You've heard about this ancient deity in legend... it's known as Ammit.

Before you have the time to think, Ammit's spirit yells, "I WILL MAKE YOU PAY THE ULTIMATE PRICE FOR YOUR THIEVERY!"

A moment later, the spirit materializes and stomps the ground with its massive legs, causing the pyramid to shake.

The ceiling starts to collapse in on itself. You run backwards in fear, narrowly missing the cascade of rubble falling behind you.

You make it out relatively unscathed, but the path forward is blocked by a pile of rocks.

The only way forward is to clear the rocks ahead of you.

Luckily, you have a utility that is very good at repetitive tasks!

# Use "vim clearRubble.sh" to open a script named "clearRubble". Scripts allow you to perform whatever task you'd like; in this case, it will be to clear the rubble.
	+ Vim itself is a text editor, but you can use it to create scripts.
	+ It has two main modes: Command Mode and Input Mode.
		- Command Mode allows you to use various commands to make text editing faster; we won't cover them here, but you can do more research on those commands.
			~ To access Command Mode, press the "ESCAPE" key on your keyboard.
		- Input Mode allows you to input text.
			~ To access Input Mode, press the "i" key on your keyboard.
	+ To make a script, begin your file with the following phrase (excluding the quotes): "#!/bin/bash"
	+ To save a file, enter Command Mode (press "ESCAPE") then type "ZZ" (both capitalized by holding "SHIFT").
	
# When writing a shell script, you may automate repetitive tasks using a "for loop". This will repeat commands a certain amount of times.
	+ To make a for loop, use the following syntax:
		for i in {(startingNumber)..(endingNumber)}
		do
			[ INSERT TASKS YOU'D LIKE TO REPEAT HERE. ]
			[ THIS CAN BE AS MANY LINES AS YOU'D LIKE. ]
		done

# To run your script, you must first type "chmod u+x clearRubble.sh" to give yourself permissions to do so.

# Then, you may run it as with any other encounter with ". clearRubble.sh".
 
Unless you want to clear all of the rubble by hand, you should use vim to create a script with a for loop that clears it all for you.

An example script has appeared atop the rubble... perhaps it's as if Ammit wants you to reach her?

ammitEntryScript

ammitPathEntered="true"

elif [ $ammitPathAllowed = "false" ]; then
	echo -e "\nYou aren't allowed here yet.\n"
	cd ..
fi
