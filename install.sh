#!/bin/bash

sudo apt update
sudo apt upgrade
git submodule update --init --recursive
sudo apt install xdotool -y
sudo ./bash/add_cronjob.sh
sudo ./bash/setup_lcd.sh
echo "installation completed. Raspberry will reboot now"
sleep 1
sudo reboot
