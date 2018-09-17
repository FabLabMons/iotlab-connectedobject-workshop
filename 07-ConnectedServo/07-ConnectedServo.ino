#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <Servo.h>

// Début configuration
const char* ANGLE_URL = "http://192.168.1.2/red/node-00/angle";
const char* ssid     = "MONS";
const char* password = "Mons2017";
const int MIN_PULSE_WIDTH_US = 900;
const int MAX_PULSE_WIDTH_US = 2100;
const int ANGLE_DELAY_MS = 20;
const int ANGLE_STEP = 5;
// Fin configuration

Servo myservo;
int currentAngle = 0;
int desiredAngle = 0;

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

  myservo.attach(D1, MIN_PULSE_WIDTH_US, MAX_PULSE_WIDTH);
  myservo.write(0);
  delay(300);
}

void loop() {
  
  HTTPClient http;

  http.begin(ANGLE_URL);
  http.GET();
  String serverAnswer = http.getString();
  desiredAngle =  serverAnswer.toInt();
  http.end();

  int delta = desiredAngle - currentAngle;
  if (delta != 0) {
    Serial.print("Moving to angle ");
    Serial.print(desiredAngle);
    Serial.print(" ");
  }
  while (delta != 0) {
    if (delta > ANGLE_STEP) {
      currentAngle = currentAngle + ANGLE_STEP;
    } else if (delta < - ANGLE_STEP) {
      currentAngle = currentAngle - ANGLE_STEP;
    } else {
      currentAngle = currentAngle + delta;
    }
    myservo.write(currentAngle);
    delta = desiredAngle - currentAngle;
    delay(ANGLE_DELAY_MS);
    Serial.print(".");
  }
  Serial.println();

  delay(1000);
}
