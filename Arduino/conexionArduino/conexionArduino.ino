#define pulsador 8

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(pulsador,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(pulsador)==HIGH) {
    Serial.println('H');
  } else {
    Serial.println('L');
  }

}
