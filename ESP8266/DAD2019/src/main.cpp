#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include <ESP8266HTTPClient.h>
#include <ArduinoJson.h>
#include <iostream>
#include <string>
#include <sstream>
#include <SoftwareSerial.h>


SoftwareSerial espserial(D3,D4); //RX, TX

//Vector de los elementos
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

// Update these with values suitable for your network.

const char* ssid = "Pocophone F1";
const char* password = "jcortesv21";
const char* mqtt_server = "192.168.43.176";
const char* http_server = "192.168.43.176";
const char* http_server_port = "8090";
const char* channel_name = "topic_2";
String clientId;

LiquidCrystal_I2C lcd(0x27,20,4);

WiFiClient espClient;
PubSubClient client(espClient);
long lastMsg = 0;
long lastMsgRest = 0;
char msg[50];
int value = 0;

// ConexiÃ³n a la red WiFi
void setup_wifi() {

  delay(10);

  // Fijamos la semilla para la generaciÃ³n de nÃºmero aleatorios. Nos harÃ¡ falta
  // mÃ¡s adelante para generar ids de clientes aleatorios
  randomSeed(micros());

  Serial.println();
  Serial.print("Conectando a la red WiFi ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);

  // Mientras que no estemos conectados a la red, seguimos leyendo el estado
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  // En este punto el ESP se encontrarÃ¡ registro en la red WiFi indicada, por
  // lo que es posible obtener su direcciÃ³n IP
  Serial.println("");
  Serial.println("WiFi conectado");
  Serial.println("Direccion IP registrada: ");
  Serial.println(WiFi.localIP());
/*  lcd.setCursor(0, 2);
  lcd.print("IP adress:");
  lcd.setCursor(0,3);
  lcd.print(WiFi.localIP());*/
}

// MÃ©todo llamado por el cliente MQTT cuando se recibe un mensaje en un canal
// al que se encuentra suscrito. Los parÃ¡metros indican el canal (topic),
// el contenido del mensaje (payload) y su tamaÃ±o en bytes (length)
void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Mensaje recibido [canal: ");
  Serial.print(topic);
  Serial.print("] ");
  Serial.print(" publish data is:");
// lcd.clear();
 // Leemos la informaciÃ³n del cuerpo del mensaje. Para ello no sÃ³lo necesitamos
 // el puntero al mensaje, si no su tamaÃ±o.
 for(int i=0;i<length;i++)
 {
   Serial.print((char)payload[i]);
   lcd.setCursor(0, 0);
   lcd.print("LCD 20x4"); // Start Print text to Line 1
   lcd.setCursor(i, 1);
   lcd.write((char)payload[i]);
  }
  Serial.println();


  DynamicJsonDocument doc(length);
  deserializeJson(doc, payload, length);
  const char* action = doc["action"];
  Serial.printf("Accion %s\n", action);
  // Encendemos un posible switch digital (un diodo led por ejemplo) si el
  // contenido del cuerpo es 'on'
  if (strcmp(action, "on") == 0) {
    //digitalWrite(BUILTIN_LED, HIGH);
    digitalWrite(BUILTIN_LED, LOW);//en ESP high es apagado, y LOW encendido en el led interno
    Serial.println("Detectada accion de activacion");
  } else if (strcmp(action, "off") == 0) {
    //digitalWrite(BUILTIN_LED, LOW);
    digitalWrite(BUILTIN_LED, HIGH);
    Serial.println("Detectada accion de desactivacion");
  } else{
    Serial.println("Accion no reconocida");
  }
}

// FunciÃ³n para la reconexiÃ³n con el servidor MQTT y la suscripciÃ³n al canal
// necesario. TambiÃ©n se fija el identificador del cliente
void reconnect() {
  // Esperamos a que el cliente se conecte al servidor
  while (!client.connected()) {
    Serial.print("Conectando al servidor MQTT...");
    // Creamos un identificador de cliente aleatorio. Cuidado, esto debe
    // estar previamente definido en un entorno real, ya que debemos
    // identificar al cliente de manera unÃ­voca en la mayorÃ­a de las ocasiones
    clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Intentamos la conexiÃ³n del cliente
    if (client.connect(clientId.c_str())) {
      String printLine = "   Cliente " + clientId + " conectado al servidor " + mqtt_server;
      Serial.println(printLine);
      // Publicamos un mensaje en el canal indicando que el cliente se ha
      // conectado. Esto avisarÃ­a al resto de clientes que hay un nuevo
      // dispositivo conectado al canal. Puede ser interesante en algunos casos.
      String body = "Dispositivo con ID = ";
      body += clientId;
      body += " conectado al canal ";
      body += channel_name;
      client.publish(channel_name, "");
      // Y, por Ãºltimo, suscribimos el cliente al canal para que pueda
      // recibir los mensajes publicados por otros dispositivos suscritos.
      client.subscribe(channel_name);
    } else {
      Serial.print("Error al conectar al canal, rc=");
      Serial.print(client.state());
      Serial.println(". Intentando de nuevo en 5 segundos.");
      delay(5000);
    }
  }
}

// MÃ©todo para hacer una peticiÃ³n GET al servidor REST
void makeGetRequest(const char* nombreElemento){
    HTTPClient http;
    const char* simboloElemento;
    const char* numeroAtomico;
    // Abrimos la conexiÃ³n con el servidor REST y definimos la URL del recurso
    String url = "http://";
    url += http_server;
    url += ":";
    url += http_server_port;
    url += "/elemento";
    url += nombreElemento;
    //url += "/:nombre_elemento";
    String message = "Enviando peticion GET al servidor REST. ";
    message += url;
    Serial.println(message);
    http.begin(url);
    // Realizamos la peticion y obtenemos el codigo de estado de la respuesta
    int httpCode = http.GET();

    if (httpCode > 0)
    //si recibimos -1 es posible fallo de esp, de conexion con internet, etc.
    {
     // Si el codigo devuelto es > 0, significa que tenemos respuesta, aunque
     // no necesariamente va a ser positivo (podria ser un codigo 400).
     // Obtenemos el cuerpo de la respuesta y lo imprimimos por el puerto serie
     String payload = http.getString();
     Serial.println("payload: " + payload);

     const size_t bufferSize = JSON_OBJECT_SIZE(1) + 370;
     DynamicJsonDocument root(bufferSize);
     deserializeJson(root, payload);

     const int num = root["numero_atomico"];
     std::string cadena = "";
     cadena = static_cast<std::ostringstream*>(&(std::ostringstream() << num))->str();
     const char * c = cadena.c_str();


     const char* oid_elemento = root["oid_elemento"];
     const char* nombre_elemento = root["nombre_elemento"];
     const char* simbolo_elemento = root["simbolo_elemento"];
     simboloElemento = root["simbolo_elemento"];
     const char* numero_atomico = c;
     numeroAtomico = c;
     const char* url_video = root["url_video"];
     const char* nombre_tabla_periodica = root["nombre_tabla_periodica"];

     Serial.print("oid_elemento:");
     Serial.println(oid_elemento);
     Serial.print("nombre_elemento:");
     Serial.println(nombre_elemento);
     Serial.print("simbolo_elemento:");
     Serial.println(simbolo_elemento);
     Serial.print("numero_atomico:");
     Serial.println(numero_atomico);
     Serial.print("url_video:");
     Serial.println(url_video);
     Serial.print("nombre_tabla_periodica:");
     Serial.println(nombre_tabla_periodica);

    }
    //lcd.print("Hola");
    lcd.clear();
    lcd.setCursor(0,0);
    lcd.print("Elemento pulsado:");
    lcd.setCursor(0,1);
    lcd.print(nombreElemento);
    lcd.print("-");
    lcd.print(simboloElemento);
    lcd.print("-");
    lcd.print(numeroAtomico);


    Serial.printf("\nRespuesta servidor REST %d\n", httpCode);
    // Cerramos la conexiÃ³n con el servidor REST
    http.end();
}

// MÃ©todo para hacer una peticiÃ³n PUT al servidor REST
void makePutRequest(){
    HTTPClient http;
    // Abrimos la conexiÃ³n con el servidor REST y definimos la URL del recurso
    String url = "http://";
    url += http_server;
    url += ":";
    url += http_server_port;
    url += "/usuario";
    String message = "Enviando peticion PUT al servidor REST. ";
    message += url;
    Serial.println(message);
    // Realizamos la peticiÃ³n y obtenemos el cÃ³digo de estado de la respuesta
    http.begin(url);

    const size_t bufferSize = JSON_OBJECT_SIZE(1) + 370;
    DynamicJsonDocument root(bufferSize);
    root["nombre_usuario"] = "gayme";
    root["nombre_tabla_periodica"] = "tabla01";
    String json_string;
    serializeJson(root, json_string);

    int httpCode = http.PUT(json_string);

    if (httpCode > 0)
    {
     // Si el cÃ³digo devuelto es > 0, significa que tenemos respuesta, aunque
     // no necesariamente va a ser positivo (podrÃ­a ser un cÃ³digo 400).
     // Obtenemos el cuerpo de la respuesta y lo imprimimos por el puerto serie
     String payload = http.getString();
     Serial.println("payload put: " + payload);
    }

    Serial.printf("\nRespuesta servidor REST PUT %d\n", httpCode);
    // Cerramos la conexiÃ³n con el servidor REST
    http.end();
}

// MÃ©todo de inicializaciÃ³n de la lÃ³gica
void setup() {
  // Ajustamos el pinmode del pin de salida para poder controlar un
  // switch digial (dido led por ejemplo)
  // Fijamos el baudrate del puerto de comunicaciÃ³n serie
  Serial.begin(115200);
  espserial.begin(9600);
  pinMode(D1,INPUT_PULLUP);
  pinMode(D2,OUTPUT);

  pinMode(BUILTIN_LED, OUTPUT);

  lcd.init();
  lcd.backlight();
  // Nos conectamos a la red WiFi
  setup_wifi();
  // Indicamos la direcciÃ³n y el puerto del servidor donde se encuentra el
  // servidor MQTT
  client.setServer(mqtt_server, 1883);

}

void loop() {

  // Nos conectamos al servidor MQTT en caso de no estar conectado previamente
  if (!client.connected()) {
    reconnect();
  }
  // Fijamos la funciÃ³n de callback que se ejecutarÃ¡ cada vez que se publique
  // un mensaje por parte de otro dispositivo en un canal al que el cliente
  // actual se encuentre suscrito
  client.setCallback(callback);

  // Esperamos (de manera figurada) a que algÃºn cliente suscrito al canal
  // publique un mensaje que serÃ¡ recibido por el dispositivo actual
  client.loop();

  // Cada 2 segundos publicaremos un mensaje en el canal procedente del cliente
  // actual. Esto se hace sin bloquear el loop ya que de lo contrario afectarÃ­a
  // a la recepciÃ³n de los mensajes MQTT
  long now = millis();
  if (now - lastMsg > 2000) {
    lastMsg = now;
    ++value;
    // Construimos un objeto JSON con el contenido del mensaje a publicar
    // en el canal.
  /*  StaticJsonDocument<200> doc;
    doc["clientId"] = clientId;
    doc["message"] = "mensaje periodico";
    doc["number"] = value;
    String output;
    serializeJson(doc, output);
    Serial.print("Mensaje publicado: ");
    Serial.println(output);
    client.publish(channel_name, output.c_str());*/
  }


  if (now - lastMsgRest > 2000) {
    if(espserial.available()>0){

          dato = espserial.read();
          //Serial.println(elementos[dato]);
          lastMsgRest = now;
          makeGetRequest(elementos[dato]);


     }


    //makePutRequest();

  }


}
