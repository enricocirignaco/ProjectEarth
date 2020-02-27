#!/usr/bin/env python

import RPi.GPIO as GPIO
from mfrc522 import SimpleMFRC522

device = SimpleMFRC522()

try:
	id, text = device.read()
	print(id)
	print(text)
finally:
	GPIO.cleanup()
