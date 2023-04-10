#!/bin/bash


if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
	unset enteredPyramid
	unset enteredHallway
	unset keyCollected
	unset hiddenPassagewayAllowed
	unset enteredHiddenPassageway
	unset doorwayAllowed
	unset enteredDoorway
	unset buttonCombination
	unset stairwellAllowed
	unset climbedStairwell
	unset helpedAssan
	unset enteredTomb
	unset tombSequenceBegun
	unset PS3
	unset shezmuPathAllowed
	unset shezmuPathEntered
	unset holeInWallAllowedShezmu
	unset holeInWallEnteredShezmu
	unset shezmuKeyCollected
	unset ammitPathAllowed
	unset ammitPathEntered
	unset rubbleAmount
	unset holeInWallAllowedAmmit
	unset holeInWallEnteredAmmit
	unset ammitKeyCollected
	unset apophisPathAllowed
	unset apophisPathEntered
	unset holeInWallAllowedApophis
	unset holeInWallEnteredApophis
	unset apophisKeyCollected
	unset Health
	unset BossHealth
	unset Damage
	unset BossDamage
	unset Res
	unset WineCounter
	unset skip
	unset move
	unset turn
	unset userHealth
	unset resistance
	unset ammitHealth
	unset armCount
	unset biteRollCount
	unset attackDamage
	function cd() {
		command cd "$@" || return
	}
	function cat() {
		command cat "$@" || return
	}
	function rm() {
		command rm "$@" || return
	}
	function ls() {
		command ls "$@" || return
	}
	function mv() {
		command mv "$@" || return
	}
	function vim() {
		command vim "$@" || return
	}
	function cp() {
		command cp "$@" || return
	}
	echo -e "\nThanks for playing!\n"
fi
