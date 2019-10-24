#!/usr/bin/env python
from geometry_msgs.msg import Twist
from motor_management.srv import *
import rospy


import RPi.GPIO as GPIO
from time import sleep
#These are the GPIO pin numbers.en# is the PWM Control
in1 = 23
in2 = 24
in4=16
in3=20
in5=19
in6=26
in7=5
in8=6
en = 25
en2=21
en3=13
en4=12

twist=Twist()
#The GPIO.BCM option means that you are referring to the pins by the "Broadcom SOC channel" number
GPIO.setmode(GPIO.BCM)
#The GPIO.setup sets the channel for eg input ,output
GPIO.setup(in1,GPIO.OUT)
GPIO.setup(in2,GPIO.OUT)
GPIO.setup(in3,GPIO.OUT)
GPIO.setup(in4,GPIO.OUT)
GPIO.setup(en,GPIO.OUT)
GPIO.setup(en2,GPIO.OUT)
GPIO.output(in1,GPIO.LOW)
GPIO.output(in2,GPIO.LOW)
GPIO.output(in3,GPIO.LOW)
GPIO.output(in4,GPIO.LOW)
#Creating a PWM instance
p1=GPIO.PWM(en,1000)
p1.start(25)
p2=GPIO.PWM(en2,1000)
p2.start(25)

GPIO.setup(in5,GPIO.OUT)
GPIO.setup(in6,GPIO.OUT)
GPIO.setup(in7,GPIO.OUT)
GPIO.setup(in8,GPIO.OUT)
GPIO.setup(en3,GPIO.OUT)
GPIO.setup(en4,GPIO.OUT)
GPIO.output(in5,GPIO.LOW)
GPIO.output(in6,GPIO.LOW)
GPIO.output(in7,GPIO.LOW)
GPIO.output(in8,GPIO.LOW)
p3=GPIO.PWM(en3,1000)
p3.start(25)
p4=GPIO.PWM(en4,1000)
p4.start(25)
def exec_command(req):
'''
	Args:
	1. req: contains the command for motor, generated sent by the node command_gener

	This function can instruct the bot to change direction, or move slower or faster . Returns a generic response
'''

		x = req.command
		print("Printing the request:\n")
		print ("Command : %s"%(x))
		if x=='j':
			print("stop")
			GPIO.output(in1,GPIO.LOW)
     			GPIO.output(in2,GPIO.LOW)
			GPIO.output(in3,GPIO.LOW)
        		GPIO.output(in4,GPIO.LOW)
			GPIO.output(in5,GPIO.LOW)
     			GPIO.output(in6,GPIO.LOW)
			GPIO.output(in7,GPIO.LOW)
        		GPIO.output(in8,GPIO.LOW)

		elif x=="w" or x=="A":
	  		print("forward")
	      		GPIO.output(in1,GPIO.HIGH)
	  		GPIO.output(in2,GPIO.LOW)
			GPIO.output(in3,GPIO.HIGH)
		  	GPIO.output(in4,GPIO.LOW)
			GPIO.output(in5,GPIO.HIGH)
	  		GPIO.output(in6,GPIO.LOW)
			GPIO.output(in7,GPIO.HIGH)
		  	GPIO.output(in8,GPIO.LOW)


		elif x=="s" or x=="B":
			print("backward")
		 	GPIO.output(in1,GPIO.LOW)
	 		GPIO.output(in2,GPIO.HIGH)
			GPIO.output(in3,GPIO.LOW)
  			GPIO.output(in4,GPIO.HIGH)
			GPIO.output(in5,GPIO.LOW)
	 		GPIO.output(in6,GPIO.HIGH)
			GPIO.output(in7,GPIO.LOW)
  			GPIO.output(in8,GPIO.HIGH)

		elif x=="d" or x=="C":
			print("right")
		 	GPIO.output(in1,GPIO.HIGH)
	 		GPIO.output(in2,GPIO.LOW)
			GPIO.output(in3,GPIO.LOW)
  			GPIO.output(in4,GPIO.HIGH)
			GPIO.output(in5,GPIO.HIGH)
	 		GPIO.output(in6,GPIO.LOW)
			GPIO.output(in7,GPIO.LOW)
  			GPIO.output(in8,GPIO.HIGH)

		elif x=="a" or x=="D":
			print("left")
		 	GPIO.output(in1,GPIO.LOW)
	 		GPIO.output(in2,GPIO.HIGH)
			GPIO.output(in3,GPIO.HIGH)
  			GPIO.output(in4,GPIO.LOW)
			GPIO.output(in5,GPIO.LOW)
	 		GPIO.output(in6,GPIO.HIGH)
			GPIO.output(in7,GPIO.HIGH)
  			GPIO.output(in8,GPIO.LOW)


		elif x=='l':
		   	print("low")
			p1.ChangeDutyCycle(25)
			p2.ChangeDutyCycle(25)
			p3.ChangeDutyCycle(25)
			p4.ChangeDutyCycle(25)
		elif x=='m':
		   	print("med")
			p1.ChangeDutyCycle(50)
			p2.ChangeDutyCycle(50)
			p3.ChangeDutyCycle(50)
			p4.ChangeDutyCycle(50)
		elif x=='h':
		   	print("high")
			p1.ChangeDutyCycle(75)
			p2.ChangeDutyCycle(75)
			p3.ChangeDutyCycle(75)
			p4.ChangeDutyCycle(75)
		elif x=='e':
			GPIO.cleanup()


		else:
			print("<<<  wrong data  >>>")
			print("please enter the defined data to continue.....")

		return command_mgrResponse(156)



def command_server():
	''' Starts command_server node. '''
	rospy.init_node('Command_Server')#Initializes the node
	s = rospy.Service('command_listener', command_mgr, exec_command)#Starts a service by the name command_listener. Executes the function exec_command
	print("Server Ready")
	rospy.spin()#Keeps the node running 

if __name__ == "__main__":
	command_server()
