#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

const char* ssid     = "MONS";
const char* password = "Mons2017";
const char* PING_URL = "http://192.168.1.2/red/node-00/ping";

void setup() {
  Serial.begin(115200);
  Serial.println();
  Serial.print("Connecting to WiFi ");
  Serial.println(ssid);

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void loop() {
  HTTPClient http;
  Serial.println("Pinging server");
  http.begin(PING_URL);
  int httpStatus = http.POST("");
  Serial.print("HTTP response: ");
  Serial.print(httpStatus);
  Serial.print(" ");
  Serial.println(http.getString());
  http.end();
  Serial.println("Connection closed");
  delay(1000);
}
