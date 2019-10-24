void setup() {
  //창의크기설정(width, height)
  size(200,200);
  
}

void draw() {
  //배경화면 색 설정 (255 == white)
  background(255);  
  //다음에 쓸 컬러 설정(0 == black) 
  fill(0);
  //화면에 표시(문자열, x좌표, y좌표)
  text("Hello Strings!",10,100);
  //다음에 쓸 컬러 설정(255/2 == gray)
  fill(255/2);      
  text("Hello Strings!",10,150);
}
