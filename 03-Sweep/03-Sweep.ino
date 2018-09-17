#include <Servo.h>

static const int MIN_PULSE_WIDTH_US = 900;
static const int MAX_PULSE_WIDTH_US = 2100;
static const int PULSE_PERIOD_MS = 20;
static const int PULSE_STEP = 30;

Servo myservo;
unsigned long lastChangeTimestamp = 0;
int pulseWidthStep = PULSE_STEP;
int currentPulseWidth = MIN_PULSE_WIDTH_US;

void setup() {
  myservo.attach(D1);  // attaches the servo on GIO2 to the servo object
}

void loop() {
  int pos;

  for (pos = MIN_PULSE_WIDTH_US; pos <= MAX_PULSE_WIDTH_US; pos += PULSE_STEP) {
    myservo.write(pos);
    delay(PULSE_PERIOD_MS);
  }
  delay(2000);
  for (pos = MAX_PULSE_WIDTH_US; pos >= MIN_PULSE_WIDTH_US; pos -= PULSE_STEP) {
    myservo.write(pos);
    delay(PULSE_PERIOD_MS);
  }
  delay(2000);
}
