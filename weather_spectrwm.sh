#!/bin/bash


while :
do
	weath=$(curl wttr.in/Caerphilly?format="%l+%C+%f" 2>/dev/null | cut -d' ' -f2-)


	if [[ $weath == *location* || $weath == *running* ]]; then
		echo "<Unavailable>" > ~/.local/bin/weather.txt
  
	else
		echo $weath > ~/.local/bin/weather.txt
	fi
	sleep 60s
done
