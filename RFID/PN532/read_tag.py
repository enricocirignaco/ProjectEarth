import sys

sys.path.insert(0, "/home/pi/Documents/git/ProjectEarth/libs/python/py532lib")

from py532lib.i2c import *
from py532lib.frame import *
from py532lib.constants import *

# create object for RFID mudule
pn532 = Pn532_i2c()
pn532.SAMconfigure()

# store known IDs
tag_id = '4b01010004080439a91ba3'
galaxys8_id = '533272'

# read near device'ID
readed_id = pn532.read_mifare().get_data()
# convert bytearray to hey string
readed_id = bytes(readed_id).hex()

# check if readed ID match one of the known IDs
if readed_id == galaxys8_id:
	print('1')
elif readed_id == tag_id:
	print ('1')
else:
	print('0')

print(readed_id)
