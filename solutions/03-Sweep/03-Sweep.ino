#include <Servo.h>

static const int MIN_PULSE_WIDTH_US = 524;
static const int MAX_PULSE_WIDTH_US = 2287;
static const int PULSE_PERIOD_MS = 20;

Servo myservo;
unsigned long lastChangeTimestamp = 0;
int pulseWidthStep = 50;
int currentPulseWidth = MIN_PULSE_WIDTH_US;

void setup() {
  myservo.attach(D1);  // attaches the servo on GIO2 to the servo object
}

void loop() {
  unsigned long now = millis();
  if ((now - lastChangeTimestamp) > PULSE_PERIOD_MS) {
    currentPulseWidth += pulseWidthStep;
    if (currentPulseWidth > MAX_PULSE_WIDTH_US) {
      currentPulseWidth = MAX_PULSE_WIDTH_US;
      pulseWidthStep = -20;
    } else if (currentPulseWidth < MIN_PULSE_WIDTH_US) {
      currentPulseWidth = MIN_PULSE_WIDTH_US;
      pulseWidthStep = 20;
    }
    myservo.writeMicroseconds(currentPulseWidth);
    lastChangeTimestamp = millis();
  }
}
