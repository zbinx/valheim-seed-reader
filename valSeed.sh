#!/bin/bash

# a bash script to find out your valheim worlds and seeds

echo
echo Valheim world and seed reader

sleep 1

echo

echo Options:
echo

echo 1. To see a list of your Valheim worlds.
echo 2. To see the seed of your Valheim world.

echo

read -p "Option: " choice_var

echo

if [[ $choice_var == "1" ]]; then
	echo 
	ls -1 ~/.config/unity3d/IronGate/Valheim/worlds
else
	if [[ $choice_var == "2" ]]; then
		read -p "Which worlds seed do you want? " seed_var 
		echo **Seed is the 10 digits after your world name**
		cat ~/.config/unity3d/IronGate/Valheim/worlds/$seed_var.fwl
		echo 
		exit 1
	fi
fi









