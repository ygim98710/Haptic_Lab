int cnt = 0;

void setup() { 
//통신속도를 9600으로 설정 후 시리얼 통신을 준비한다.
  Serial.begin(9600); 
} 

void loop() { 
  char buf[255];
//buf에 cnt값을 저장한다.
  sprintf(buf, "%d", cnt);
//buf에 있는 (cnt)값을 Serial 통신에 출력한다.
  Serial.println(buf);
//1초에 한번씩 cnt값을 증가시킨다.
  cnt++;
  delay(1000); 
} 