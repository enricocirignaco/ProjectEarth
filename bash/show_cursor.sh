#!/bin/bash

sudo sed -i '95s/.*/xserver-command=X -s 0 dpms/' /etc/lightdm/lightdm.conf
sudo reboot
