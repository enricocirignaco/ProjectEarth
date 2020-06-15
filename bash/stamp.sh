#!/bin/bash

#Go to first chrome tab and click on stamp button
xdotool key ctrl+1
sleep 1

xdotool key ctrl+r
sleep 2

xdotool mousemove 280 445
xdotool click 1

#change to all right after stamp
sleep 10
xdotool key ctrl+2
