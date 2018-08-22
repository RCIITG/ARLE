#!/usr/bin/env python

from motor_mgr.srv import *
import sys
import rospy


def callService(motor_id, command):
	rospy.wait_for_service('command_listener')
	try:
		handle = rospy.ServiceProxy('command_listener', command_mgr)
		resp = handle(motor_id, command)
		return resp.status
	except rospy.ServiceException, e:
		print("Failure. Error : " + str(e))
		return 0

def askInput():
	motor_id = input("Enter the motor id : ")
	command = raw_input("Enter the command : ")
	print("Calling service with arguments : " + str(motor_id) + " " + command)
	response = callService(motor_id, command)
	if response == 0:
		print("Service returned Failure\n")
	else:
		print("Service returned Success\n")



if __name__ == "__main__":
	while(1):
		askInput()

