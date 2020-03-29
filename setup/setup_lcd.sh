#!/bin/bash


# replace original lightdm.conf file with modified one.
# mouse cursor hided
# lcd-off timeout disabled
cp ./lightdm.conf /etc/lightdm/lightdm.conf

# copy autostart file to LXDE config directory.
# run the application automatically on startup.
cp ./autostart /etc/xdg/lxsession/LXDE-pi/autostart

#install lcd drivers (Warning /boot/config.txt will be replaced!)
cd ./LCD-show
# update submodule to latest master-commit
git pull origin master
chmod +x LCD35-show_no_reboot
#rotate display to 270° without reboot
./LCD35-show_no_reboot 270
