#!/bin/bash

# launch script to change tab on given time
cd /home/pi/Documents/git/ProjectEarth/
./LCD/change_stamp_needed.sh &

# launch python script to read RFID
cd ./RFID/PN532
python3 ./read_tag.py &
cd ../../LCD
#open chromium tabs an login
./open_browser.sh &
