#include <Servo.h>

static const int MIN_PULSE_WIDTH_US = 900;
static const int MAX_PULSE_WIDTH_US = 2100;
static const int PULSE_PERIOD_MS = 20;
static const int PULSE_STEP = 20;

Servo myservo;
unsigned long lastChangeTimestamp = 0;
int currentAngle = MIN_PULSE_WIDTH_US;
int desiredAngle = currentAngle;

void setup() {
  Serial.begin(115200);
  Serial.println();
  myservo.attach(D1, MIN_PULSE_WIDTH_US, MAX_PULSE_WIDTH_US);
  myservo.writeMicroseconds(currentAngle);
  delay(300);
  Serial.println("Angle du servo (entre 0 et 90) ? ");
}

void loop() {
  
  int delta = desiredAngle - currentAngle;
  while (delta != 0) {
    if (delta < - PULSE_STEP) {
      currentAngle -= PULSE_STEP;
    } else if (delta > PULSE_STEP) {
      currentAngle += PULSE_STEP;
    } else {
      currentAngle += delta;
    }
    myservo.writeMicroseconds(currentAngle);
    delta = desiredAngle - currentAngle;
    delay(PULSE_PERIOD_MS);
  }

  if (Serial.available() > 0) {
    int desiredAngle = Serial.parseInt();
    if (Serial.read() == '\n' && (desiredAngle < 0 || desiredAngle > 90)) {
      Serial.println("Erreur. La valeur n'est pas comprise entre 0 et 90");
    }
  }
}
