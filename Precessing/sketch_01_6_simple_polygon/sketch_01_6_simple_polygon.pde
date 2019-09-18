void setup() 
{
  size(640, 360);
}


/*
pushMatrix() A B C popMatrix()
C -> B -> A 순서로 적용됨 : Stack이라서
*/

void draw() 
{
  background(102);
  pushMatrix();
    //translate(x만큼, y만큼) 이동
    translate(width*0.5, height*0.5);

    polygon(0, 0, 82, 3);  // Triangle
  popMatrix();
}

//x, y, 반지름, 꼭짓점 개수
void polygon(float x, float y, float radius, int npoints)
{

  float angle = TWO_PI / npoints;
  //도형을 그릴것임  
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) 
  {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    //점과 점을 이음
    vertex(sx, sy);
  }
  endShape(CLOSE);
  //다그렸음
}
