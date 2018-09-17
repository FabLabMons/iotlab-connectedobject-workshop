#include <Servo.h>

static const int MIN_PULSE_WIDTH_US = 900;
static const int MAX_PULSE_WIDTH_US = 2100;
static const int ANGLE_DELAY_MS = 20;
static const int ANGLE_STEP = 5;

Servo myservo;
int currentAngle = 0;
int desiredAngle = 0;

void setup() {
  Serial.begin(115200);
  Serial.println();
  myservo.attach(D1, MIN_PULSE_WIDTH_US, MAX_PULSE_WIDTH_US);
  myservo.write(currentAngle);
  delay(300);
  Serial.println("Angle du servo (entre 0 et 90) ? ");
}

void loop() {
  
  int delta = desiredAngle - currentAngle;
  while (delta != 0) {
    if (delta < - ANGLE_STEP) {
      currentAngle -= ANGLE_STEP;
    } else if (delta > ANGLE_STEP) {
      currentAngle += ANGLE_STEP;
    } else {
      currentAngle += delta;
    }
    myservo.write(currentAngle);
    delta = desiredAngle - currentAngle;
    delay(ANGLE_DELAY_MS);
    Serial.print(".");
  }

  if (Serial.available() > 0) {
    int desiredAngle = Serial.parseInt();
    if (Serial.read() == '\n' && (desiredAngle < 0 || desiredAngle > 90)) {
      Serial.println("Erreur. La valeur n'est pas comprise entre 0 et 90");
    }
  }
}
