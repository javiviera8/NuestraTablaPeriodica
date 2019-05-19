#include "MUX74HC4067.h"

// Creates a MUX74HC4067 instance
// 1st argument is the Arduino PIN to which the EN pin connects
// 2nd-5th arguments are the Arduino PINs to which the S0-S3 pins connect
MUX74HC4067 mux1(7, 22, 23, 24, 25);
MUX74HC4067 mux2(7, 26, 27, 28, 29);
void setup()
{
  Serial.begin(9600);  
    while ( !Serial ) ;  
  mux1.signalPin(A0, INPUT, DIGITAL);
}

void loop()
{
  byte data1;
  byte data2;

  for (byte i = 0; i < 3; ++i)
  {
    data1 = mux1.read(i); 
    data2 = mux2.read(i);   
    if ( data1 == LOW )
    
      Serial.println(i+10);
   else if(data2 = LOW) 
    Serial.println(i+20);
  


  delay(50);

}}
