#include <SoftwareSerial.h>

SoftwareSerial myserial(10,11); //RX, TX

const int muxSIG = A0;
const int muxS0 = 22;
const int muxS1 = 23;
const int muxS2 = 24;
const int muxS3 = 25;

const int muxSIG2 = A1;
const int muxS4 = 26;
const int muxS5 = 27;
const int muxS6 = 28;
const int muxS7 = 29;

const int muxSIG3 =A2 ;
const int muxS8 =30 ;
const int muxS9 =31 ;
const int muxS10 =32 ;
const int muxS11 =33 ;

const int muxSIG4 =A3 ;
const int muxS12 =34 ;
const int muxS13 =35 ;
const int muxS14 =36 ;
const int muxS15 =37 ;

const int muxSIG5 =A4 ;
const int muxS16 =38 ;
const int muxS17 =39 ;
const int muxS18 =40 ;
const int muxS19 =41 ;

const int muxSIG6 =A5 ;
const int muxS20 =42 ;
const int muxS21 =43 ;
const int muxS22 =44 ;
const int muxS23 =45 ;

const int muxSIG7 =A6;
const int muxS24 =46 ;
const int muxS25 =47 ;
const int muxS26 =48 ;
const int muxS27 =49 ;

const int muxSIG8 =A7 ;
const int muxS28 =50 ;
const int muxS29 =51 ;
const int muxS30 =52 ;
const int muxS31 =53 ;
/*
const char* elementos[120]={"Hidrogeno","Helio","Litio","Berilio","Boro","Carbono","Nitrogeno",
"Oxigeno","Fluor","Neon","Sodio","Magnesio","Aluminio","Silicio","Fosforo","Azufre",
"Cloro","Argon","Potasio","Calcio","Escandio","Titaneo","Vanadio","Cromo","Manganeso","Hierro",
"Cobalto","Niquel","Cobre","Cinc","Galio","Germanio","Arsenico","Selenio","Bromo","Kripton","Rubidio",
"Estroncio","Itrio","Circonio","Niobio","Molibdeno","Tercnecio","Rutenio","Rodio","Paladio",
"Plata","Cadmio","Indio","Estaño","Antimonio","Telurio","Yodo","Xenon","Cesio","Bario","Lantano","Cerio","Praseodimio",
"Neodimio","Prometio","Samario","Europio","Gadolinio","Terbio","Disprosio","Holmio","Erbio","Tulio",
"Iterbio","Lutecio","Hafnio","Tantalio","Wolframio","Renio","Osmio","Iridio","Platino","Oro",
"Mercurio","Talio","Plomo","Bismuto","Polonio","Astato","Radon","Francio","Radio","Actinio","Torio",
"Protactinio","Uranio","Neptunio","Plutonio","Americio","Curio","Berkelio","Californio","Einstenio",
"Fermio","Mendelevio","Nobelio","Lawrencio","Rutherfordio","Dubnio","Seaborgio","Bohrio","Hassio","Meitnerio",
"Darmstadio","Roentgenio","Copernicio","Nihonium","Flerovio","Moscovium","Livermorio","Tennessine",
"Oganesson"};
*/

int SetMuxChannel(byte channel)
{
   digitalWrite(muxS0, bitRead(channel, 0));
   digitalWrite(muxS1, bitRead(channel, 1));
   digitalWrite(muxS2, bitRead(channel, 2));
   digitalWrite(muxS3, bitRead(channel, 3));

}
int SetMuxChannel2(byte channel)
{

   digitalWrite(muxS4, bitRead(channel, 0));
   digitalWrite(muxS5, bitRead(channel, 1));
   digitalWrite(muxS6, bitRead(channel, 2));
   digitalWrite(muxS7, bitRead(channel, 3));
}
int SetMuxChannel3(byte channel)
{
   digitalWrite(muxS8, bitRead(channel, 0));
   digitalWrite(muxS9, bitRead(channel, 1));
   digitalWrite(muxS10, bitRead(channel, 2));
   digitalWrite(muxS11, bitRead(channel, 3));

}
int SetMuxChannel4(byte channel)
{

   digitalWrite(muxS12, bitRead(channel, 0));
   digitalWrite(muxS13, bitRead(channel, 1));
   digitalWrite(muxS14, bitRead(channel, 2));
   digitalWrite(muxS15, bitRead(channel, 3));
}
int SetMuxChannel5(byte channel)
{
   digitalWrite(muxS16, bitRead(channel, 0));
   digitalWrite(muxS17, bitRead(channel, 1));
   digitalWrite(muxS18, bitRead(channel, 2));
   digitalWrite(muxS19, bitRead(channel, 3));

}
int SetMuxChannel6(byte channel)
{

   digitalWrite(muxS20, bitRead(channel, 0));
   digitalWrite(muxS21, bitRead(channel, 1));
   digitalWrite(muxS22, bitRead(channel, 2));
   digitalWrite(muxS23, bitRead(channel, 3));
}
int SetMuxChannel7(byte channel)
{
   digitalWrite(muxS24, bitRead(channel, 0));
   digitalWrite(muxS25, bitRead(channel, 1));
   digitalWrite(muxS26, bitRead(channel, 2));
   digitalWrite(muxS27, bitRead(channel, 3));

}
int SetMuxChannel8(byte channel)
{

   digitalWrite(muxS28, bitRead(channel, 0));
   digitalWrite(muxS29, bitRead(channel, 1));
   digitalWrite(muxS30, bitRead(channel, 2));
   digitalWrite(muxS31, bitRead(channel, 3));
}

void setup()
{
  Serial.begin(115200);
  myserial.begin(9600);
  pinMode(10,INPUT);
  pinMode(11,OUTPUT);
   pinMode(muxS0, OUTPUT);
   pinMode(muxS1, OUTPUT);
   pinMode(muxS2, OUTPUT);
   pinMode(muxS3, OUTPUT);
   pinMode(muxSIG, INPUT);
   
   pinMode(muxS4, OUTPUT);
   pinMode(muxS5, OUTPUT);
   pinMode(muxS6, OUTPUT);
   pinMode(muxS7, OUTPUT);
   pinMode(muxSIG2, INPUT);
     
   pinMode(muxS8, OUTPUT);
   pinMode(muxS9, OUTPUT);
   pinMode(muxS10, OUTPUT);
   pinMode(muxS11, OUTPUT);
   pinMode(muxSIG3, INPUT);
     
   pinMode(muxS12, OUTPUT);
   pinMode(muxS13, OUTPUT);
   pinMode(muxS14, OUTPUT);
   pinMode(muxS15, OUTPUT);
   pinMode(muxSIG4, INPUT);
     
   pinMode(muxS16, OUTPUT);
   pinMode(muxS17, OUTPUT);
   pinMode(muxS18, OUTPUT);
   pinMode(muxS19, OUTPUT);
   pinMode(muxSIG5, INPUT); 
    
   pinMode(muxS20, OUTPUT);
   pinMode(muxS21, OUTPUT);
   pinMode(muxS22, OUTPUT);
   pinMode(muxS23, OUTPUT);
   pinMode(muxSIG6, INPUT);
     
   pinMode(muxS24, OUTPUT);
   pinMode(muxS25, OUTPUT);
   pinMode(muxS26, OUTPUT);
   pinMode(muxS27, OUTPUT);
   pinMode(muxSIG7, INPUT);
     
   pinMode(muxS28, OUTPUT);
   pinMode(muxS29, OUTPUT);
   pinMode(muxS30, OUTPUT);
   pinMode(muxS31, OUTPUT);
   pinMode(muxSIG8, INPUT);
}
 
void loop()
{
   for (byte i = 0; i < 16; i++)
   {
      SetMuxChannel(i);
      SetMuxChannel2(i);
      SetMuxChannel3(i);
      SetMuxChannel4(i);
      SetMuxChannel5(i);
      SetMuxChannel6(i);
      SetMuxChannel7(i);
      SetMuxChannel8(i);
      //delay(10);/**/
      byte muxValue = analogRead(muxSIG);
      byte muxValue2 = analogRead(muxSIG2);
      byte muxValue3 = analogRead(muxSIG3);
      byte muxValue4 = analogRead(muxSIG4);
      byte muxValue5 = analogRead(muxSIG5);
      byte muxValue6 = analogRead(muxSIG6);
      byte muxValue7 = analogRead(muxSIG7);
      byte muxValue8 = analogRead(muxSIG8);
     
      if(muxValue==0){
      myserial.write(i);
      Serial.println(i);
      //Serial.print("\t\n");
      //delay(10);
      }
      /*
      if(muxValue2==0){
      Serial.print(elementos[i+16]);
      Serial.print("\t\n");
      //delay(10);
      }
      if(muxValue3==0){
      Serial.print(elementos[i+32]);
      Serial.print("\t\n");
      //delay(10);
      }   
      if(muxValue4==0){
      Serial.print(elementos[i+48]);
      Serial.print("\t\n");
      //delay(10);
      }
      if(muxValue5==0){
      Serial.print(elementos[i+64]);
      Serial.print("\t\n");
      //delay(10);
      }   
      if(muxValue6==0){
      Serial.print(elementos[i+80]);
      Serial.print("\t\n");
      //delay(10);
      }
      if(muxValue7==0){
      Serial.print(elementos[i+96]);
      Serial.print("\t\n");
      //delay(10);
      }
      if(muxValue8==0){
      Serial.print(elementos[i+112]);
      Serial.print("\t\n");
      //delay(10);
      }
      */
   }
   delay(100);
}
