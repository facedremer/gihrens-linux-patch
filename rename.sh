#!/bin/bash

# Run this script with the path to the game's TEXTURES directory as an argument. 

cd $1 

DIRS=$(ls -d */ | cut -f1 -d'/')

for dir in $DIRS; do
	if [ $dir != 'possible_missing_textures' ]; then
		cd $dir
		ls | xargs -i mv {} ../$dir\\{}
		cd ..
	else
		continue
	fi
done

find . -type d -empty -delete
