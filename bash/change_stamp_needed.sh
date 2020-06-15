#!/bin/bash

CHECKOUT_LUNCH="11:30"
CHECKIN_LUNCH="12:10"
CHECKOUT_EVENING="16:40"

while [ "$(date +%H:%M)" != $CHECKOUT_LUNCH ]; do sleep 1; done
xdotool key ctrl+3 # Display red tab

while [ "$(date +%H:%M)" != $CHECKIN_LUNCH ]; do sleep 1; done
xdotool key ctrl+3 # Display red tab

while [ "$(date +%H:%M)" != $CHECKOUT_EVENING ]; do sleep 1; done
xdotool key ctrl+3 # Display red tab

