void setup() {
  size(100, 100);
}

void draw() {
  background(204);
  //선을 그림(시작할 x좌표, 시작할 y좌표, 끝낼x좌표, 끝날y좌표)
  line(0, 0, mouseX, mouseY);
}

void mousePressed() {
  //파일에 저장
  save("line.jpg");
  println("saved...");
}
