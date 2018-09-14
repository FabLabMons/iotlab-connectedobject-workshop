#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

const char* ssid     = "MONS";
const char* password = "Mons2017";

unsigned long lastPingTimestamp = 0;

void setup() {
  Serial.begin(9600);
  delay(100);

  Serial.println();
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
  if (millis() - lastPingTimestamp > 1000) {
    HTTPClient http;
    Serial.println("Opening connection");
    http.begin("http://192.168.1.22/red/ping");
    int httpStatus = http.POST("");
    Serial.print("HTTP response: ");
    Serial.print(httpStatus);
    Serial.print(" ");
    Serial.println(http.getString());
    http.end();
    Serial.println("Connection closed");
    lastPingTimestamp = millis();
  }
}
