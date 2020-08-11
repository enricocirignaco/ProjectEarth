#!/bin/bash

# open chromium browser
chromium-browser http://time.biral.ch ./web/stamp_done.html ./web/stamp_needed.html ./web/wrong_tag.html ./web/error.html --check-for-update-interval=1209600 --force-device-scale-factor=0.95 --kiosk --disable-infobars &

sleep 30
# login in timetool
xdotool key ctrl+0x30		#100%
sleep 1
xdotool mousemove 230 440
sleep 1
xdotool click 1
xdotool click 1
sleep 1

# resize page
xdotool key ctrl+shift+minus	#90%
sleep 1
xdotool key ctrl+shift+minus	#80%
sleep 1
xdotool key ctrl+shift+minus	#75%
sleep 5

# change to stamp needed tab
xdotool key ctrl+3
sleep 1
