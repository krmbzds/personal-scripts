#!/bin/bash


downloadscripts=1
lowendscript=1

directory="./scripts"

if [ "$downloadscripts" -eq 1 ]; then

	sudo mkdir $directory
	# stuff to download
	sudo wget http://www.pixelbeat.org/scripts/ps_mem.py -P $directory
	sudo wget https://raw.github.com/Xeoncross/lowendscript/master/setup-debian.sh -P $directory
	sudo wget https://github.com/rg3/youtube-dl/raw/master/youtube-dl -P $directory
	# executing permissions
	sudo chmod +x $directory/*

	if [ $lowendscript -eq 1 ]; then
		sudo $directory/setup-debian.sh system		
	fi
fi
