#!/usr/bin/env python

import rospy
from math import fabs
import struct
from std_msgs.msg import Float64,Float32,Int16
import serial
import time
ser = serial.Serial('/dev/ttyACM0',115200)

time.sleep(2)
lwheel=0.0
rwheel=0.0



cmd_byte_map = {
    'left': b"\x00",
    'right': b"\x02"
}

def lwheel_callback(data):
	lwheel=float(data.data)*800.0
	#temp = str.encode(str(int(lwheel))+'a')	
	serial_msg = cmd_byte_map['left'] + struct.pack("<		i", lwheel)	
	#print(temp)
	
	ser.write(serial_msg)
	
def rwheel_callback(data):
	rwheel=float(data.data)*800.0
	serial_msg = cmd_byte_map['right'] + struct.pack("<i", rwheel)	
	#ser.write(temp)
	ser.write(serial_msg)
	
lpub = rospy.Publisher('/lwheel', Int16,queue_size=5)     
rpub = rospy.Publisher('/rwheel', Int16,queue_size=5)     

if __name__ == '__main__':
    try:
        rospy.init_node('motor', anonymous=True)
        rospy.Subscriber('/lmotor', Float32, lwheel_callback)        
        rospy.Subscriber('/rmotor', Float32, rwheel_callback)
        while(1):
            ls = 1
            rs = 1
            lpub.publish(Int16(ls))
            rpub.publish(Int16(rs))
				    
    	rospy.spin()
    except rospy.ROSInterruptException:
        pass


