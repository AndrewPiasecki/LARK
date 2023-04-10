#!/bin/bash
if [ $ammitKeyCollected = "true" ]; then
	echo -e "\nYou've already defeated Ammit.\n"
else
if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else

userHealth=100
resistance=5
ammitHealth=100
armCount=2
biteRollCount=0
attackDamage=10

cat<<ammitIntro

Ammit is a goddess with the head of a crocodile, torso of a leopard, and hippo legs.

She is responsible for eating the souls of those whose hearts were weighed against the feather of Ma'at, the gooddess of truth, and failed to balance.

ammitIntro

function checkGame(){
	if [ $userHealth -le 0 ]
		then
			echo -e "\nYou have died. Run \"Ammit.sh\" again to retry.\n"
			break
	fi
	if [ $ammitHealth -le 0 ]
		then
			echo -e "\nYou have defeated Ammit!\n\nYou promptly grab the key from her body.\n"
			ammitKeyCollected="true"
			break
	fi
			
}

function printStats(){
	if [ $ammitHealth -le 0 ]; then
		echo -e "\nYour Health: [$userHealth]        Your Resistance: [$resistance]        Ammit's Health: [0]\n"
	elif [ $userHealth -le 0 ]; then
		echo -e "\nYour Health: [0]        Your Resistance: [$resistance]        Ammit's Health: [$ammitHealth]\n"
	else
		echo -e "\nYour Health: [$userHealth]        Your Resistance: [$resistance]        Ammit's Health: [$ammitHealth]\n"
	fi
}

function judgeOfHeart(){
	echo -e "Ammit used Judge of Heart!\n\nShe peers into your health total. Because you've lost $((100-$userHealth)) health during your fight, this move deals $((100-$userHealth)) damage."
	userHealth=$(($userHealth-$(((100-$userHealth)))))
	checkGame
	printStats
}
function stomp() {
	echo -e "Ammit used Stomp!\n\nWith her hippo legs, she shakes the ground, causing an earthquake."
	if [ $resistance -gt 0 ]; then
		resistance=$(($resistance-1))
		echo -e "\nYour resistance drops by 1."
	else
		echo -e "\nThis does nothing, because your resistance is already 0.\n"
	fi
	printStats
}

function crocBite() {
	echo -e "Ammit used Croc Bite!\n\nShe dashes toward to you and bites you before retreating, dealing $((10-$resistance)) damage."
	userHealth=$(($userHealth-$((10-$resistance))))
	checkGame
	printStats
}

function biteRoll() {
	echo -e "Ammit used Bite Roll!\n\nAmmit grabs your arm within your jaws and does an alligator roll, tearing it off, dealing $((10-$resistance)) damage, and halving your attack damage."
	userHealth=$(($userHealth-$((10-$resistance))))
	attackDamage=5
	armCount=$(($armCount-1))
	if [ $armCount -eq 0 ]; then
		echo -e "\nYou've lost both of your arms. You lose the battle.\n"
		userHealth=0
	fi
	checkGame
	printStats
}

while [ 1 -eq 1 ]
	do
		#moveNumber=$(($RANDOM % 100))
		#if [ $moveNumber -ge 0 -a $moveNumber -le 24 ]; then
		#	stomp
		#elif [ $moveNumber -ge 25 -a $moveNumber -le 74 ]; then
		#	crocBite
		#elif [ $moveNumber -ge 75 -a $moveNumber -le 89 ]; then
		#	biteRoll
		#elif [ $moveNumber -ge 90 -a $moveNumber -le 99 ]; then
		#	judgeOfHeart
		#fi
		select combatOption in Attack Heal Run
			do
				if [ $REPLY -eq 1 ]; then
					#echo -e "\nYou slash at Ammit with your weapon, dealing $attackDamage damage."
cat<<weaponList
Your current weapons:

1) Dagger - 1 Damage
2) Battle Axe - 3 Damage
3) Mace - 4 Damage
4) Bow - 5 Damage
5) Javelin - 6 Damage
6) Spear - 7 Damage
7) Khopesh - 8 Damage

Respond with the number corresponding to the weapon you'd like to attack with.

weaponList
					read -p "Which weapon would you like to use? " userResponse
					if [ $userResponse -eq 1 ]; then
						echo -en "You slash Ammit with your dagger, dealing "
						attackDamage=1
					elif [ $userResponse -eq 2 ]; then
						echo -en "You swing at Ammit with your battle axe, dealing "
						attackDamage=3
					elif [ $userResponse -eq 3 ]; then
						echo -en "You swing at Ammit with your mace, dealing "
						attackDamage=4
					elif [ $userResponse -eq 4 ]; then
						echo -en "You shoot Ammit with your bow, dealing "
						attackDamage=5
					elif [ $userResponse -eq 5 ]; then
						echo -en "You throw your javelin at Ammit, dealing "
						attackDamage=6
					elif [ $userResponse -eq 6 ]; then
						echo -en "You stab Ammit with your spear, dealing "
						attackDamage=7
					elif [ $userResponse -eq 7 ]; then
						echo -en "You slash Ammit with your khopesh, dealing "
						attackDamage=8
					else
						echo -e "\nInvalid weapon identifier.\n"
					fi
					if [ $armCount -eq 2 ]; then
						ammitHealth=$(($ammitHealth-$attackDamage))
						echo -e "$attackDamage damage."
					elif [ $armCount -eq 1 ]; then
						ammitHealth=$(($ammitHealth-$(($attackDamage/2))))
						echo -e "$(($attackDamage/2)) damage."
					fi
					printStats
					break
				elif [ $REPLY -eq 2 ]; then
					if [ $userHealth -eq 100 ]; then
						echo -e "\nYou cannot heal any further.\n"
						printStats
						break
					elif [ $userHealth -ge 96 -a $userHealth -le 99 ]; then
						echo -e "\nYou quickly cover your wounds, gaining `100-$userHealth` health.\n"
						userHealth=100
						printStats
						break
					elif [ $userHealth -gt 0 -a $userHealth -le 95 ]; then
					echo -e "\nYou quickly cover your wounds, gaining 5 health.\n"
						userHealth=$(($userHealth+5))
						printStats
						break
					fi
				elif [ $REPLY -eq 3 ]; then
					echo -e "\nYou quickly turn and try to run away from the fight, but Ammit is too quick!\nShe snags your ankle and drags you back into battle.\n"
					break
				else
					echo -e "\nInvalid choice, please try again. Remember to type the number corresponding to the action you wish to take.\n"
				fi
			done
		checkGame
		moveNumber=$(($RANDOM % 100))
		#moveNumber=$(( RANDOM % 4))
		if [ $moveNumber -ge 0 -a $moveNumber -le 24 ]; then
			stomp
		elif [ $moveNumber -ge 25 -a $moveNumber -le 74 ]; then
			crocBite
		elif [ $moveNumber -ge 75 -a $moveNumber -le 89 ]; then
			biteRoll
		elif [ $moveNumber -ge 90 -a $moveNumber -le 99 ]; then
			judgeOfHeart
		fi
done

fi
fi
