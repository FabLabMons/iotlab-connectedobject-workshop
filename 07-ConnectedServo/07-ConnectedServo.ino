#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <Servo.h>

const char* NODE_ID = "node-00";

const int MIN_PULSE_WIDTH_US = 900;
const int MAX_PULSE_WIDTH_US = 2100;
const int PULSE_PERIOD_MS = 20;
const int PULSE_STEP = 20;
const char* ssid     = "MONS";
const char* password = "Mons2017";

Servo myservo;
unsigned long lastChangeTimestamp = 0;
unsigned long lastPingTimestamp = 0;
int currentPulseWidth = MIN_PULSE_WIDTH_US;
int desiredPulseWidth = currentPulseWidth;

void setup() {
  Serial.begin(9600);
  delay(1000);

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

  myservo.attach(D1);
  myservo.writeMicroseconds(currentPulseWidth);
  delay(300);
}

void loop() {
  
  if (millis() - lastChangeTimestamp > PULSE_PERIOD_MS) {
    int delta = desiredPulseWidth - currentPulseWidth;
    if (delta < - PULSE_STEP) {
      currentPulseWidth -= PULSE_STEP;
    } else if (delta > PULSE_STEP) {
      currentPulseWidth += PULSE_STEP;
    } else {
      currentPulseWidth += delta;
    }
    myservo.writeMicroseconds(currentPulseWidth);
    lastChangeTimestamp = millis();
  }

  if (millis() - lastPingTimestamp > 1000) {
    HTTPClient http;
    String url = String("http://192.168.1.22/red/") + NODE_ID + "/angle";
    http.begin(url);
    http.GET();
    String serverAnswer = http.getString();
    http.end();
    int desiredAngle =  serverAnswer.toInt();
    desiredPulseWidth = map(desiredAngle, 0, 90, MIN_PULSE_WIDTH_US, MAX_PULSE_WIDTH_US);
    lastPingTimestamp = millis();
  }
}
