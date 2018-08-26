#!/usr/bin/env python

from motor_mgr.srv import *
import rospy


def exec_command(req):
	motor_id = req.motor_id
	command = req.command
	print("Printing the request:\n")
	print "Motot ID : %d\nCommand : %s"%(motor_id, command)
	return command_mgrResponse(156)


def command_server():
	rospy.init_node('Command_Server')
	s = rospy.Service('command_listener', command_mgr, exec_command)
	print("Server Ready")
	rospy.spin()



if __name__ == "__main__":
	command_server()