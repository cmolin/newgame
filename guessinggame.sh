#!/usr/bin/env bash
# File: guessinggame.sh

function nbr_files {
ls -l | wc -l 
}

echo "How many are there files in the current dircetory?"
read guess

while [[ $guess -ne $(nbr_files) ]]
do
	if [[ $guess -lt $(nbr_files) ]]
	then
		echo "Your guess is too low. Enter new guess"
		read guess
	else
		echo "Your guess is too high. Enter new guess"
		read guess
	fi
done
echo "good guess"



