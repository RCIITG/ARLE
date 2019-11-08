


#include <ros.h>
#include <geometry_msgs/Twist.h>
#include <digitalWriteFast.h>
#include <std_msgs/Int16.h>

ros::NodeHandle nh;
int TicksCount=4;
std_msgs::Int16 ticks;
int speed=0;
void messageCb( const geometry_msgs::Twist& toggle_msg){

 speed=int(toggle_msg.linear.x*900);

 }
ros::Publisher chatter("chatter",&ticks);

ros::Subscriber<geometry_msgs::Twist> sub("cmd_vel", &messageCb );


void setup() {
 Serial.begin(57600);
  
  nh.initNode();
  nh.subscribe(sub);
  pinMode(8,OUTPUT);
  pinMode(9,OUTPUT);
  digitalWrite(8,LOW);
  attachInterrupt(digitalPinToInterrupt(2), HandleRightMotorInterruptA, RISING);
  nh.advertise(chatter);
  
  // put your setup code here, to run once:

}
void HandleRightMotorInterruptA()
{
  // count the ticks between some interval and calculate the rotation rate in the interval
  TicksCount++;
  }

void loop() {

  nh.spinOnce();
  delay(1);
  analogWrite(9,speed);
  ticks.data=TicksCount;
  chatter.publish(&ticks);
}
