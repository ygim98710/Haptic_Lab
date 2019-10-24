//serial 통신을 하기 위해 import
import processing.serial.*;

Serial myPort; 
String keyDisp;
float val1 = 0;

void setup() {  
  size(800, 600);
  //시리얼 통신을 할 수 있는 port 목록 출력 후 마지막 번째 통신 port와 이 객체(?)와 통신을 하겠음을 설정
  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[Serial.list().length - 1], 9600);
}

void draw(){
  background(255);
  fill(0);
  int lf = 10;
 
  //화면에 frame값과 val1을 찍음, 이때 val1의 값은 아두이노의 Serial 통신으로 보내주는 cnt값일 것임
  String buf = String.format("%06d : %.0f", frameCount, val1);
  text(buf, 20,20);
  
//시리얼 통신에 들어오는 값이 있다면
  while(myPort.available() > 0){
//String형태로 값을 받아옴(읽어옴)
    String str1 = myPort.readStringUntil(lf);
//null이 아니라면, 즉 정상적인 값이라면 float형태로 변환해서 val1에 저장함
    if(str1 != null){
      val1 = float(str1);
    }
  }
}