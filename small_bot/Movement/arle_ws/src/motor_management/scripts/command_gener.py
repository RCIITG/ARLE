#!/usr/bin/env python

from motor_management.srv import *
import sys
import rospy
import termios, tty, os, time
button_delay = 0.2
def callService( command):
	'''Starts the client
	Args
	 command: command for motor
	Returns
	 status of motor, if command_server is running
	 0 if not

	 '''
	rospy.wait_for_service('command_listener')#Waiting for the service command_listner to start
	try:
		handle = rospy.ServiceProxy('command_listener', command_mgr)
		resp = handle( command)
		return resp.status
	except rospy.ServiceException, e:
		print("Failure. Error : " + str(e))
		return 0

def getch():
	''' Function to grab input without pressing Enter '''
    fd = sys.stdin.fileno()
    old_settings = termios.tcgetattr(fd)
    try:
        tty.setraw(sys.stdin.fileno())
        ch = sys.stdin.read(1)

    finally:
        termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
    return ch

def askInput():
	'''Function to ask for user command for the motor'''
	print("Enter the command :")
	command=getch()
	time.sleep(button_delay)
	print("Calling service with arguments : "  + " " + command)
	response = callService(command)
	if response == 0:
		print("Service returned Failure\n")
	else:
		print("Service returned Success\n")



if __name__ == "__main__":
	while(1):
		askInput()







 
