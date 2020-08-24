#!/bin/bash

#Chrome Extension -Reload All Tabs- needed in order for script to work (https://chrome.google.com/webstore/detail/reload-all-tabs/midkcinmplflbiflboepnahkboeonkam?hl=en)
#endless loop
while true
do
	#sleep for 2 minutes
	sleep 120
	#refresh page
	xdotool key alt+shift+r
done
