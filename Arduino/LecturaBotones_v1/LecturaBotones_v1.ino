#include "MUX74HC4067.h"

// Creates a MUX74HC4067 instance
// 1st argument is the Arduino PIN to which the EN pin connects
// 2nd-5th arguments are the Arduino PINs to which the S0-S3 pins connect
MUX74HC4067 mux1(7, 22, 23, 24, 25);

void setup()
{
  Serial.begin(9600);  
    while ( !Serial ) ;  
  mux1.signalPin(A0, INPUT, DIGITAL);
}

void loop()
{
  byte data1;

  for (byte i = 0; i < 3; ++i)
  {
    data1 = mux1.read(i);   
    if ( data1 == LOW ) {
      Serial.println(i);
      /*
      switch(i) {
        case 0: Serial.println("Hidrogeno");break;
        case 1: Serial.println("Litio");break;
        case 2: Serial.println("Sodio");break;
      } 
      */
    }
         
    
  
  delay(50);
  }
}
