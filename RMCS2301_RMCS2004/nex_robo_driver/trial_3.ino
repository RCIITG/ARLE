/*  Arduino DC Motor Control - PWM | H-Bridge | L298N  -  Example 01
    by Dejan Nedelkovski, www.HowToMechatronics.com
*/
#define enA 9
#define in1 8
#define in2 11
//#define button 4
//int rotDirection = 0;
//int pressed = false;

const int clkPinA = 2;
//const int dirPinA = 4;
const int clkPinB = 3;
//const int dirPinB = 5;

volatile int encoderACount = 0;
volatile int encoderBCount = 0;
volatile boolean changeFlagA = false;
volatile boolean changeFlagB = false;

void setup() {
  Serial.begin(2000000);
  pinMode(enA, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  //pinMode(button, INPUT);
  // Set initial rotation direction
  digitalWrite(in1, LOW);
  digitalWrite(in2, HIGH);
  

  pinMode(clkPinA, INPUT);  
//  pinMode(dirPinA, INPUT);  
  pinMode(clkPinB, INPUT);  
//  pinMode(dirPinB, INPUT);  
  attachInterrupt(0, encoderIntA, RISING);
  attachInterrupt(1, encoderIntB, RISING);
}

void loop() {
  //int potValue = analogRead(A0); // Read potentiometer value
  int potValue = 1023; // Read potentiometer value
  int pwmOutput = map(potValue, 0, 1023, 0 , 255); // Map the potentiometer value from 0 to 255
  analogWrite(enA, pwmOutput); // Send PWM signal to L298N Enable pin
  // Read button - Debounce
//  if (digitalRead(button) == true) {
//    pressed = !pressed;
//  }
//  while (digitalRead(button) == true);
//  delay(20);
//  // If button is pressed - change rotation direction
//  if (pressed == true  & rotDirection == 0) {
//    digitalWrite(in1, HIGH);
//    digitalWrite(in2, LOW);
//    rotDirection = 1;
//    delay(20);
//  }
  
  // If button is pressed - change rotation direction
//  if (pressed == false & rotDirection == 1) {
//    digitalWrite(in1, LOW);
//    digitalWrite(in2, HIGH);
//    rotDirection = 0;
//    delay(20);
//  }

if (changeFlagA) {
    changeFlagA = false;
    Serial.print("A\t");
    Serial.println(encoderACount);
  }
 if (changeFlagB) {
    changeFlagB = false;
    Serial.print("B\t");
    Serial.println(encoderBCount);
  }  

}

void encoderIntA() {
//  if (digitalRead(dirPinA) == HIGH)
    encoderACount++;
//  else
//    encoderACount--;
  changeFlagA = true;
}

void encoderIntB() {
//  if (digitalRead(dirPinB) == HIGH)
    encoderBCount++;
//  else
//    encoderBCount--;
  changeFlagB = true;
}
