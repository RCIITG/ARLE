
#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from sensor_msgs.msg import Imu
import serial
import time
import tf

ser=serial.Serial('/dev/ttyACM1',115200)
time.sleep(2)

if __name__ == '__main__':
    try:
        pub_imu = rospy.Publisher('/imu/data', Imu, queue_size=1)
        rospy.init_node('imudone', anonymous=True)
        imu_msg = Imu()
        imu_msg.orientation.x = 0
        imu_msg.orientation.y = 0
        imu_msg.orientation.z = 0
        imu_msg.orientation.w = 0
        imu_msg.header.frame_id = "base_link"
        seq = 1
        rate = rospy.Rate(20) # 10hz
        while not rospy.is_shutdown():
            data=ser.readline()

            data = data.split()
            if len(data) == 6:
                try:
                    imu_msg.linear_acceleration.x = float(data[0])
                    imu_msg.linear_acceleration.y = float(data[1])
                    imu_msg.linear_acceleration.z = float(data[2])

                    imu_msg.angular_velocity.x = float(data[3])
                    imu_msg.angular_velocity.y = float(data[4])
                    imu_msg.angular_velocity.z = float(data[5])

                    imu_msg.header.stamp = rospy.Time.now()
                    imu_msg.header.seq = seq

                    pub_imu.publish(imu_msg)
                    seq += 1 
                    ser.flush()
                    ser.flushInput()
                    ser.flushOutput() 
                except ValueError:
                    pass   
            rate.sleep()
    except rospy.ROSInterruptException:
        pass

		
	
