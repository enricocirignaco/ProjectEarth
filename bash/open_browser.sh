#!/bin/bash

# open chromium browser
chromium-browser http://time.biral.ch ./web/stamp_done.html ./web/stamp_needed.html ./web/wrong_tag.html ./web/error.html --force-device-scale-factor=0.95 --kiosk --disable-infobars &

sleep 15
# login in timetool
xdotool key ctrl+0x30		#100%
sleep 1
xdotool mousemove 230 440
sleep 1
xdotool click 1

sleep 1
# resize page
xdotool key ctrl+shift+minus	#90%
sleep 1
xdotool key ctrl+shift+minus	#80%
sleep 1
xdotool key ctrl+shift+minus	#75%
#sleep 1
#xdotool key ctrl+shift+minus	#67%
#sleep 1
#xdotool key ctrl+shift+minus	#50%

#sleep 1
# minimize sidebar timetool
#xdotool mousemove 173 300
#sleep 1
#xdotool mousedown 1
#sleep 1
#xdotool mousemove 5 250
#sleep 1
#xdotool mouseup 1
#sleep 1
#xdotool mousemove 190 250
#sleep 1
#xdotool mousedown 1
#sleep 1
#xdotool mousemove 10 250
#sleep 1
#xdotool mouseup 1

sleep 5
# change to stamp needed tab
xdotool key ctrl+3

sleep 1
# refresh all tabs in order to avoid expired session
./refresh_page.sh &
