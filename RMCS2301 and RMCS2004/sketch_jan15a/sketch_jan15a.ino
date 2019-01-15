#define Pulse 8
#define Dir 9

double delay_Micros = 2000;
long delay_Micros2= 2000000;

long currentMicros = 0;
long previousMicros = 0;
long previousMicros2 = 0;
long startTime = micros();
double k = 0.2;
double a = 5;

void setup() {
  pinMode(Pulse,OUTPUT);
  pinMode(Dir,OUTPUT);
  digitalWrite(Dir,LOW);
  Serial.begin(9600);

}
void loop()
{
  currentMicros = micros();
if(currentMicros - previousMicros2 >= delay_Micros2){
  previousMicros2 = currentMicros;
  delay_Micros = 2000*pow(a,-k*(micros()-startTime)/1000000);
  Serial.println(delay_Micros);
  }
if(currentMicros - previousMicros >= delay_Micros)
{
          previousMicros = currentMicros;
          
          digitalWrite(Pulse,HIGH);
          delayMicroseconds(delay_Micros);
          digitalWrite(Pulse,LOW);
  }

}

