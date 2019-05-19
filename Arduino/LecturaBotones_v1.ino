#include "MUX74HC4067.h"

// Creates a MUX74HC4067 instance
// 1st argument is the Arduino PIN to which the EN pin connects
// 2nd-5th arguments are the Arduino PINs to which the S0-S3 pins connect
MUX74HC4067 mux(7, 8, 9, 10, 11);

void setup()
{
  Serial.begin(9600);  // Initializes serial port
    // Waits for serial port to connect. Needed for Leonardo only
    while ( !Serial ) ;
  
  // Configures how the SIG pin will be interfaced
  // e.g. The SIG pin connects to PIN 3 on the Arduino,
  //      and PIN 3 is a digital input
  mux.signalPin(3, INPUT, DIGITAL);
}

// Reads the 16 channels and reports on the serial monitor
// if the corresponding push button is pressed
void loop()
{
  byte data;

  for (byte i = 0; i < 3; ++i)
  {
    // Reads from channel i and returns HIGH or LOW
    data = mux.read(i);
   
    if ( data == LOW ) Serial.println(i);
  }
  Serial.println();
  
  delay(100);
}
