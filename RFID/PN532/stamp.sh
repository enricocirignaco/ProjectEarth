#!/bin/bash

#Go to first chrome tab and click on stamp button
xdotool key ctrl+1
sleep 1
xdotool mousemove 170 300
xdotool click 1

#change to all right after stamp
sleep 10
xdotool key ctrl+2
