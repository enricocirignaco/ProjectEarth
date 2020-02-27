#!/bin/bash

chromium-browser http://time.biral.ch ./red_page.html ./green_page.html --force-device-scale-factor=0.95 &
sleep 3

xdotool key ctrl+2		#Display red tab

#stempeln simulation
sleep 10
xdotool key ctrl+1		# Display timeTool tab

sleep 5
xdotool key ctrl+3		# Display green tab
while [["$(date +%H:%M)" < "08:02"]];
xdotool ctrl+key+2		# Display red tab

#stempeln simulation
sleep 10
xdotool key ctrl+1

sleep 5
xdotool key ctrl+3		# Display green tab
while "$(date %H:%M)" < "11:30";
