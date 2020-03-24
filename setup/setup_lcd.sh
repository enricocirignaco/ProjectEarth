#!/bin/bash


# replace original lightdm.conf file with modified one.
# mouse cursor hided
# lcd-off timeout disabled
cp ./lightdm.conf /etc/lightdm/lightdm.conf

# copy autostart file to LXDE config directory.
# run the application automatically on startup.
cp ./autostart /etc/xdg/lxsession/LXDE-pi/autostart

# raplace original config.txt file with modified one.
#enable spi
#enable i2c
#change display orientation (+90)
cp ./config.txt /boot/config.txt


#must be the last command of the script (afterwards system will reboot.)
#install lcd drivers
cd ./LCD-show
chmod +x LCD35-show
./LCD35-show
