#include <Servo.h>

static const int MIN_PULSE_WIDTH_US = 900;
static const int MAX_PULSE_WIDTH_US = 2100;
static const int PULSE_PERIOD_MS = 20;
static const int PULSE_STEP = 20;

Servo myservo;
unsigned long lastChangeTimestamp = 0;
int currentPulseWidth = MIN_PULSE_WIDTH_US;
int desiredPulseWidth = currentPulseWidth;

void setup() {
  Serial.begin(9600);
  Serial.println();
  myservo.attach(D1);
  myservo.writeMicroseconds(currentPulseWidth);
  delay(1000);
  Serial.println("Angle du servo (entre 0 et 90) ? ");
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

  if (Serial.available() > 0) {
    int desiredAngle = Serial.parseInt();
    if (Serial.read() == '\n') {
      if (desiredAngle < 0 || desiredAngle > 90) {
        Serial.println("Erreur. La valeur n'est pas comprise entre 0 et 90");
      } else {
        desiredPulseWidth = map(desiredAngle, 0, 90, MIN_PULSE_WIDTH_US, MAX_PULSE_WIDTH_US);
      }
    }
  }
}
