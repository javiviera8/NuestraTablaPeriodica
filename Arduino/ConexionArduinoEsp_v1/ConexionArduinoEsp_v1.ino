#define pulsador 8

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(pulsador,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(pulsador)==LOW) {
    Serial.println('L');
    delay(200);
  } else {
        Serial.println('H');
        delay(200);
  }

}
