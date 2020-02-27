#!/usr/bin/env python

import RPi.GPIO as GPIO
from mfrc522 import SimpleMFRC522

device = SimpleMFRC522()

try:
	text= input('New data:')
	print("Now place your tag to write")
	device.write(text)
	print("Written")

finally:
	GPIO.cleanup()
