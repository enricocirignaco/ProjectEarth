#!/bin/bash

# launch script to change tab on given time
cd /home/pi/Documents/projects/ProjectEarth
./bash/change_stamp_needed.sh &

# launch python script to read RFID
#python3 ./python/read_tag.py &
# launch script to detect push button
./bash/stamp_button.sh &

#open chromium tabs an login
./bash/open_browser.sh 

#launch script to refresh all tabs periodically in order to avoid expired session
./refresh_page.sh &
