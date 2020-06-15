#!/bin/bash

# launch script to change tab on given time
cd /home/pi/Documents/projects/ProjectEarth
./bash/change_stamp_needed.sh &

# launch python script to read RFID
python3 ./python/read_tag.py &

#open chromium tabs an login
./bash/open_browser.sh &
