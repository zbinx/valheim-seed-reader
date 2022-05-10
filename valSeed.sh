#!/bin/bash

# a bash script to find out your valheim worlds and seeds

echo Type [1] to see a list of your Valheim worlds.
echo ..........................................
echo Type [2] to see the seed of your world.

read input
if [[ $input == "1" ]]; then
	ls -1 ~/.config/unity3d/IronGate/Valheim/worlds
else
	if [[ $input == "2" ]]; then
		echo Which world seed? 
		read input
		echo **Seed is the 10 digits after your world name**
		cat ~/.config/unity3d/IronGate/Valheim/worlds/$input.fwl
		echo 
		exit 1
	fi
fi









