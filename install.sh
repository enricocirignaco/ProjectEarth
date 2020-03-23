#!/bin/bash

cd ./setup
sudo apt-get update
sudo apt-get upgrade
git submodule update --init --recursive
sudo ./setup_lcd.sh
