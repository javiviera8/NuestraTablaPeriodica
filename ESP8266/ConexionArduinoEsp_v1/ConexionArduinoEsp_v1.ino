#include <Arduino.h>
#include <SoftwareSerial.h>

SoftwareSerial myserial(7,8);

int dato;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  myserial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  dato = myserial.read();
  myserial.print(dato);
  }
