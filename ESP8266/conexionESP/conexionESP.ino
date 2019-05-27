#include<SoftwareSerial.h>
SoftwareSerial espserial(D1,D2); //RX, TX

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

int dato;
void setup()
{
  Serial.begin(115200);
  espserial.begin(9600);
  pinMode(D1,INPUT_PULLUP);
  pinMode(D2,OUTPUT);

  
  
}

void loop()
{
  if(espserial.available()>0)
  {
    
       dato = espserial.read();
      // Serial.print(dato);
        //Serial.println(dato);
        Serial.println(elementos[dato]);
     
 
  }

}
