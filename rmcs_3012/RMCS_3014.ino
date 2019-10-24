/* 
Date of updation: 10th March, 2019 01:04 am 
Authors: ARLE team
*/


#include "Arduino.h"
#include <digitalWriteFast.h>

// <digitalWriteFast.h>
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
volatile bool _EncoderBSet;         //  channel B value
volatile long _Position = 0;        //  motor shaft position in ticks
float velocity = 0.0;
volatile long _TicksCount = 0,total__TicksCount=0;      //  ticks since start
int revs = 0;                       //  no of revolutions of shaft
int dir = 0;                        //  direction of rotation
unsigned long time;                 // 
unsigned long prev_time = -1;
int speed_rot= 0;

// Motor Out
#define out_1 10          // In1 of Motor Driver L298N
#define out_2 11          // In2 of Motor Driver ''
#define out_3 9           // ENA of ''



void setup() {
  
  Serial.begin(115200);
  // pinMode(c_EncoderPinA, INPUT);      // sets pin A as input
  // digitalWrite(c_EncoderPinAc, LOW);  // turn on pullup resistors
  pinMode(c_EncoderPinB, INPUT);      // sets pin B as input
  digitalWrite(c_EncoderPinB, LOW);  // turn on pullup resistors
  
  // set direction of rotation of motor
  pinMode(out_1, OUTPUT);
  digitalWrite(out_1, HIGH);
  pinMode(out_2, OUTPUT);
  digitalWrite(out_2, LOW);
  analogWrite(out_3, 0);
  

  //attachInterrupt(digitalPinToInterrupt(c_RightEncoderInterrupt), HandleRightMotorInterruptA, RISING);
  // SEE REFERENCE FOT attachInterrupt() - https://www.arduino.cc/reference/en/language/functions/external-interrupts/attachinterrupt/
  // first parameter '1' in attachInterrupt refers to pin number 3, '0' refers to pin number 2
  attachInterrupt(1, HandleRightMotorInterruptA, RISING);
  
}


void loop() {
  
  if (Serial.available())
  {
    
    speed_rot = Serial.parseInt();
    
  }
  if(speed_rot >= 0){
    digitalWrite(out_1, HIGH);
    digitalWrite(out_2, LOW);
    analogWrite(out_3, int(speed_rot));
    
 }
  else if(speed_rot < 0){
    digitalWrite(out_1, LOW);
    digitalWrite(out_2, HIGH);
    analogWrite(out_3, - int(speed_rot));
 }
  
  //Serial.println(speed_rot);
  
  // 3600 = no of ticks in circumference of encoder * gear ratio //// 18000 RPM base motor ///// 200 RPM rotor speed.
  if (_TicksCount > 3600 ) {
    revs++;
    _TicksCount = 0;
    time = millis();
    //Serial.print(time - prev_time);        // print this if time per rotation is required
    velocity = (1.0 / (time - prev_time)) * 60 * 1000; // rpm
    //Serial.print(" -> ");
    //Serial.println(velocity);          // print this if velocity in rpm is required
    Serial.println(total__TicksCount);   // print this if ticks count is required
    prev_time = time;
  }
  delayMicroseconds(20);
}


void HandleRightMotorInterruptA()
{
  // count the ticks between some interval and calculate the rotation rate in the interval
  _TicksCount++;
  total__TicksCount++;

  //

  // Test transition; since the interrupt will only fire on 'rising' we don't need to read pin A
  _EncoderBSet = digitalReadFast(c_EncoderPinB);   // read the input pin
  // and adjust counter + if A leads B

  
 if (_EncoderBSet )
 
 #ifdef RightEncoderIsReversed
   _Position = _EncoderBSet ? -1 : +1;
 #else
   _Position = _EncoderBSet ? -1 : +1;
 #endif
}
