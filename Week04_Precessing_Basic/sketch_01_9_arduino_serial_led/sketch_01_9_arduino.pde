import processing.serial.*;
Serial myPort; 

String keyDisp;
void setup() {
  
  size(800, 600);

//연결 가능한 시리얼 포트 값들을 나열함
  printArray(Serial.list());
  
  // 시리얼 통신을 마지막 시리얼 포트와 9600통신속도)
  //myPort = new Serial(this, Serial.list()[0], 9600);
  myPort = new Serial(this, Serial.list()[Serial.list().length - 1], 9600);
  
  keyDisp = "-";
}
void draw() {
  background(255);  
  fill(0);
  
  String buf = String.format("cnt : %d", frameCount);
  text(buf, 20,20);
  //int i = frameCount % 255;
  text(keyDisp, 20,40);
}


//입력이 들어오면
void keyPressed() {
    keyDisp = String.format("%c", key);
    //전송
    myPort.write(key);
}
