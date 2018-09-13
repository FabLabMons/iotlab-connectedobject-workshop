void setup() {
  Serial.begin(9600);
  Serial.println();
  Serial.println("Hello World!");
  pinMode(LED_BUILTIN, OUTPUT);
}

void loop() {
  digitalWrite(LED_BUILTIN, LOW);
  Serial.println("LED ON");
  delay(1000);
  digitalWrite(LED_BUILTIN, HIGH);
  Serial.println("LED OFF");
  delay(2000);
}
