
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

String elementos[256]={"Hidrogeno","Helio","Litio","Berilio","Boro","Carbono","Nitrogeno",
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
/*String identificaElemento(int n, String elementos[]){
  String result;
  for(int i=0; i<3; i++){
    if(n==i){
      
    }
  }
}

 */
void setup()
{
   Serial.begin(9600);
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
}
 
void loop()
{
   for (byte i = 0; i < 16; i++)
   {
      SetMuxChannel(i);
      SetMuxChannel2(i);
      //delay(10);
      byte muxValue = analogRead(muxSIG);
      byte muxValue2 = analogRead(muxSIG2);
      
     
      if(muxValue==0){
      //String res = "Hola soy el botón " + String(i) + ": " /*+ muxValue*/;
      Serial.print(elementos[i]);
      Serial.print("\t\n");
      //delay(10);
      }
      if(muxValue2==0){
      //String res = "Hola soy el botón " + String(i+16) + ": " /*+ muxValue*/;
      Serial.print(elementos[i+16]);
      Serial.print("\t\n");
      //delay(10);
      }
      
   }
   Serial.println();
   delay(200);
}
