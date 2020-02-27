#!/bin/bash

chromium-browser http://time.biral.ch ./red_page.html ./green_page.html --force-device-scale-factor=0.95 --kiosk &
sleep 8

xdotool key ctrl+0x30		#100%
sleep 1
xdotool mousemove 230 440
xdotool click 1

sleep 1
xdotool key ctrl+shift+minus	#90%
xdotool key ctrl+shift+minus	#80%
xdotool key ctrl+shift+minus	#75%
xdotool key ctrl+shift+minus	#67%
xdotool key ctrl+shift+minus	#50%

sleep 1
xdotool mousemove 116 250
xdotool mousedown 1
xdotool mousemove 5 250
xdotool mouseup 1
xdotool mousemove 125 250
xdotool mousedown 1
xdotool mousemove 10 250
xdotool mouseup 1

xdotool key ctrl+2		// Display red tab

//stempeln simulation
sleep 10
xdotool key ctrl+1		// Display timeTool tab

sleep 5
xdotool key ctrl+3		// Display green tab
while "$(date +%H:%M)" < "12:29";
xdotool ctrl+key+2			// Display red tab

//stempeln simulation
sleep 10
xdotool key ctrl+1

sleep 5
xdotool key ctrl+3		// Display green tab
while "$(date %H:%M)" < "11
