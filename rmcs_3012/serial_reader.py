'''
Date of updation: 10th March, 2019 01:04 am 
Authors: ARLE team
'''

import serial
import argparse

ser = serial.Serial('/dev/ttyACM8', 115200) # Change port as required
'''
def argsparser():
	parser = argparse.ArgumentParser('Send recieve')
	parser.add_argument('-v','--speed_value', help = 'speed value between 0 to 255: +ve rotates in clockwise, -ve rotates in anticlockwise', type= str)
	return parser.parse_args()
'''
ser.write(str.encode('100'))		# Integer should be between [-255 , 255]


while True:
	try:
		print (ser.readline().decode('utf-8'))
	except:
		continue
		
