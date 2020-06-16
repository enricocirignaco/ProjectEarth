#!/bin/bash

#Chrome Extension -Reload All Tabs- needed in order for script to work (https://chrome.google.com/webstore/detail/reload-all-tabs/midkcinmplflbiflboepnahkboeonkam?hl=en)
#endless loop
while true
do
	#sleep for 3 minutes
	sleep 180
	#refresh page
	xdotool key alt+shift+r
done
