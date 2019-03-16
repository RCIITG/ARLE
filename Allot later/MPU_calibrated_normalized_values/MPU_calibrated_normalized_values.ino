/*
    MPU6050 Triple Axis Gyroscope & Accelerometer. Simple Accelerometer Example.
    Read more: http://www.jarzebski.pl/arduino/czujniki-i-sensory/3-osiowy-zyroskop-i-akcelerometr-mpu6050.html
    GIT: https://github.com/jarzebski/Arduino-MPU6050
    Web: http://www.jarzebski.pl
    (c) 2014 by Korneliusz Jarzebski
*/ 
#include <Wire.h>
#include <MPU6050.h>
float ax,ay,az,gx,gy,gz;
MPU6050 mpu;
#include <time.h>
void setup() 
{
  Serial.begin(115200);

  while(!mpu.begin(MPU6050_SCALE_2000DPS, MPU6050_RANGE_2G))
  {
    delay(500);
  }

  //mpu.calibrateGyro();
  mpu.setThreshold(3);
}

void loop()
{
  float a = millis();
  Vector normAccel = mpu.readNormalizeAccel();
  Vector normGyro = mpu.readNormalizeGyro();
  
  ax = normAccel.XAxis;
  ay = normAccel.YAxis;
  az = normAccel.ZAxis;
  gx = normGyro.XAxis;
  gy = normGyro.YAxis;
  gz = normGyro.ZAxis;
  char buff[10];
  String value = "";

  
  dtostrf(ax, 4, 6, buff);  //4 is mininum width, 6 is precision
  value += buff;value += " ";
  dtostrf(ay, 4, 6, buff);  //4 is mininum width, 6 is precision
  value += buff;value += " "; 
  dtostrf(az, 4, 6, buff);  //4 is mininum width, 6 is precision
  value += buff;value += " "; 
  dtostrf(gx, 4, 6, buff);  //4 is mininum width, 6 is precision
  value += buff;value +=" "; 
  dtostrf(gy, 4, 6, buff);  //4 is mininum width, 6 is precision
  value += buff;value +=" "; 
  dtostrf(gz, 4, 6, buff);  //4 is mininum width, 6 is precision
  value += buff; 
  
  Serial.println(value);
  delay(10);
  
}
