#include <ros.h>
/* 
Date of updation: 10th March, 2019 01:04 am 
Authors: ARLE team
*/

#include "Arduino.h"
#include <digitalWriteFast.h>
#include <std_msgs/Int16.h>
#include <std_msgs/Float32.h>

// <digitalWriteFast.h
// library for high performance reads and writes by jrraines
// see http://www.arduino.cc/cgi-bin/yabb2/YaBB.pl?num=1267553811/0
// and http://code.google.com/p/digitalwritefast/

// RMCS 3014, when running at full RPM produces 14760 counts per revolution.
// digitalRead() is slow in reading, hence using digitalReadFast from <digitalWriteFast.h> solves the problem
// use an interrupt on channel A output and at each RISING edge check channel B output, then increment/decrement accordingly


// Define Pins
// M-(green) to OUT1 M+(yellow) to OUT2

#define c_EncoderPinA 3             // Not used in code (Red)
#define c_EncoderPinB 6             //  channel B, encoder output pin (Orange)
int lspeed=0,rspeed=0;
volatile int lTicksCount=0,rTicksCount=0;
// Motor Out
#define INA1 12          // In1 of Motor Driver L298N
#define INA2 13          // In2 of Motor Driver ''
#define lPWM 10           // ENA of left
#define rPWM 9           // ENA of right
// 1
// 2 motor working
// 3 motor works but dont use encoder B, gives false data
// 4 motor works

void lspeedcb( const std_msgs::Float32& speed){
  lspeed = int(speed.data*800);
}

void rspeedcb( const std_msgs::Float32& speed){
  rspeed = int(speed.data*800);
}



ros::NodeHandle nh;
 
std_msgs::Int16 lticks;
std_msgs::Int16 rticks;
ros::Publisher lwheel("/lwheel", &lticks);
ros::Publisher rwheel("/rwheel", &rticks);

ros::Subscriber<std_msgs::Float32> lsub("/lmotor", &lspeedcb );
ros::Subscriber<std_msgs::Float32> rsub("/rmotor", &rspeedcb );

   
void setup() {
  
  Serial.begin(115200);
  
  pinMode(INA1, OUTPUT);
  digitalWrite(INA1, HIGH);
  pinMode(INA2, OUTPUT);
  digitalWrite(INA2, LOW);


  // 10 and 9 
  analogWrite(lPWM, 0);
  analogWrite(rPWM, 0);
  // 2 and 3 PIN
  pinMode(2,INPUT_PULLUP);
  pinMode(3,INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(2), HandleLeftMotorInterruptA, RISING);
  attachInterrupt(digitalPinToInterrupt(3), HandleRightMotorInterruptA, RISING);

  nh.initNode();
  nh.advertise(lwheel);
  nh.advertise(rwheel);
  nh.subscribe(lsub);  
  nh.subscribe(rsub);
}


void loop() {
  analogWrite(lPWM, int(lspeed));
  analogWrite(rPWM, int(rspeed));
  Serial.print("LeftPWM");
  Serial.println(lPWM);
  Serial.print("RightPWM");
  Serial.println(rPWM);
  lticks.data = lTicksCount;
  lwheel.publish( &lticks );
  rticks.data = rTicksCount;
  rwheel.publish( &rticks );
  nh.spinOnce();
 }


void HandleLeftMotorInterruptA(){   lTicksCount++; }
void HandleRightMotorInterruptA(){  rTicksCount++; }
