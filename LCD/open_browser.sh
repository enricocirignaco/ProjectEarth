#!/bin/bash

# open chromium browser
chromium-browser http://time.biral.ch ../webpage/stamp_done.html ../webpage/stamp_needed.html ../webpage/wrong_tag.html ../webpage/error.html --force-device-scale-factor=0.95 --kiosk &

sleep 10
# login in timetool
xdotool key ctrl+0x30		#100%
sleep 1
xdotool mousemove 230 440
xdotool click 1

sleep 3
# resize page
xdotool key ctrl+shift+minus	#90%
xdotool key ctrl+shift+minus	#80%
xdotool key ctrl+shift+minus	#75%
xdotool key ctrl+shift+minus	#67%
xdotool key ctrl+shift+minus	#50%

sleep 3
# minimize sidebar timetool
xdotool mousemove 116 250
xdotool mousedown 1
xdotool mousemove 5 250
xdotool mouseup 1
xdotool mousemove 125 250
xdotool mousedown 1
xdotool mousemove 10 250
xdotool mouseup 1

sleep 5
# change to stamp needed tab
xdotool key ctrl+3
