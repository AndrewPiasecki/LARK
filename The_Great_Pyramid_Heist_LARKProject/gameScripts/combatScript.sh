#!/bin/bash
PS3="What would you like to do? "
select combatOption in Attack Potion Run
do
	if [ $REPLY -eq 1 ]
		then
			if [ `echo $inventory | grep "ironSword" | wc -l` -gt 0 ]
				then
					echo -e "\nYou slash at the enemy with your sword."
					continue
				else
					echo -e "\nYou punch the enemy with your fist."
					echo -e "\nIt doesn't do much; it seems to have hurt you more than them."
					echo -e "\nPerhaps it's a good idea to run until you have a weapon?\n"
					continue
			fi
	elif [ $REPLY -eq 2 ]
		then
			if [ `echo $inventory | grep "healPotion" | wc -l` -gt 0 ]
				then
					echo -e "\nYou use a healing potion.\n"
					continue
			else
					echo -e "\nYou don't have any healing potions.\n"
					continue
			fi
	elif [ $REPLY -eq 3 ]
		then
			echo -e "\nYou quickly turn and run away from the fight.\n"
			break
	fi
done
