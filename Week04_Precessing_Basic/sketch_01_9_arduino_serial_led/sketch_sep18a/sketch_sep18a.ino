void setup() {
  // put your setup code here, to run once:
  //LED_BUILTN : 내부적으로 13번으로 설정되어있음
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  //버퍼에 읽은 바이트 수 반환
  if (Serial.available() > 0) {
    //한 바이트 읽어옴
    int inByte = Serial.read();

    //0이면 끄고 1이면 켜라
    if(inByte=='0')
      digitalWrite(LED_BUILTIN, LOW);
    else if(inByte=='1')
      digitalWrite(LED_BUILTIN, HIGH); 
  }
}
