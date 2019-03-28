#include "Arduino.h"
#include <digitalWriteFast.h>

// <digitalWriteFast.h>
// library for high performance reads and writes by jrraines
// see http://www.arduino.cc/cgi-bin/yabb2/YaBB.pl?num=1267553811/0
// and http://code.google.com/p/digitalwritefast/


// RMCS 3012, when running at full RPM produces 44280 counts per revolution.
// digitalRead() is slow in reading, hence using digitalReadFast from <digitalWriteFast.h> solves the problem
// use an interrupt on channel A output and at each RISING edge check channel B output, then increment/decrement accordingly


// Define Pins
#define c_EncoderPinB 6             //  channel B, encoder output pin
volatile bool _EncoderBSet;         //  channel B value
volatile long _Position = 0;        //  motor shaft position in ticks
float velocity = 0.0;
volatile long _TicksCount = 0,total__TicksCount=0;      //  ticks since start
int revs = 0;                       //  no of revolutions of shaft
int dir = 0;                        //  direction of rotation
unsigned long time;                 // 
unsigned long prev_time = -1;


// Motor Out
#define out_1 10          
#define out_2 11
#define out_3 9



void setup() {
  
  Serial.begin(115200);
  // pinMode(c_EncoderPinA, INPUT);      // sets pin A as input
  // digitalWrite(c_EncoderPinA, LOW);  // turn on pullup resistors
  pinMode(c_EncoderPinB, INPUT);      // sets pin B as input
  digitalWrite(c_EncoderPinB, LOW);  // turn on pullup resistors
  
  // set direction of rotation of motor
  pinMode(out_1, OUTPUT);
  digitalWrite(out_1, HIGH);
  pinMode(out_2, OUTPUT);
  digitalWrite(out_2, LOW);
  analogWrite(out_3, 255);


  //attachInterrupt(digitalPinToInterrupt(c_RightEncoderInterrupt), HandleRightMotorInterruptA, RISING);
  // SEE REFERENCE FOT attachInterrupt() - https://www.arduino.cc/reference/en/language/functions/external-interrupts/attachinterrupt/
  // first parameter '1' in attachInterrupt refers to pin number 3, '0' refers to pin number 2
  attachInterrupt(1, HandleRightMotorInterruptA, RISING);
  
}


void loop() {
  //Serial.println(_TicksCount);
  //<Serial.println(_EncoderBSet);
  if(Serial.read()=='c'){
    digitalWrite(out_1, HIGH);
    digitalWrite(out_2, LOW);
    
 }
  if(Serial.read()=='r'){
    digitalWrite(out_1, LOW);
    digitalWrite(out_2, HIGH);
 }
  
  if (_TicksCount > 12000 ) {
    revs++;
    _TicksCount = 0;
    //Serial.print("revs" ) ;
    //Serial.print(revs);
    time = millis();
    Serial.print(time - prev_time);
    velocity = (1.0 / (time - prev_time)) * 60 * 1000; // rpm
    Serial.print(" -> ");
    Serial.println(velocity);
    Serial.println(total__TicksCount);
    prev_time = time;
    //digitalWrite(out_2, HIGH);
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
