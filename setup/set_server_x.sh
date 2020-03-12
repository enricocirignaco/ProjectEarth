#!/bin/bash

#replace original lightdm.conf file with modified one (display timeout + mouse cursor)
sudo cp lightdm.conf /etc/lightdm/lightdm.conf

#copy autostart file to LXDE config directory (autostart)
sudo cp autostart /etc/xdg/lxsession/LXDE-pi/autostart
