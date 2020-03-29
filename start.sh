#!/bin/bash

# launch script to change tab on given time
cd /home/pi/ProjectEarth
./LCD/change_stamp_needed.sh &

# launch python script to read RFID
cd ./RFID/PN532
python3 ./read_tag.py &

#open chromium tabs an login
cd ../../LCD
./open_browser.sh &
