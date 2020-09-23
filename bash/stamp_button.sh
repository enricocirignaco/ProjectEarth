#!/bin/bash

#setup pin 5 as input with pull up
gpio -g mode 5 in
gpio -g mode 5 up

#Endless Loop
while true
do
	#Check if Push Button pressed
	if [ $(gpio -g read 5) -eq 0 ]; then
		#Go to first chrome tab and click on stamp button
		xdotool key ctrl+1
		sleep 1

		xdotool mousemove 283 438
		xdotool click 1

		#change to all right after stamp
		sleep 10
		xdotool key ctrl+2
	fi
	sleep 0.1
done
