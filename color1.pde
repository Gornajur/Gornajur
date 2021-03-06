
  int W;
  int Y_AXIS = 5;
  color b1, b2, c1, c2;


  void setup(){

  size(800,800, P3D);
  W= min(width, height);
  frameRate(3);

  b1 = color(#4682B4);
  b2 = color(#191970);
  c1 = color(#FFD700);
  c2 = color(#B22222);

}

void draw(){

  //background(200);

  ellipse(390, 540, 170, 170);

  translate(390, height/3, -50);

  float h = random(0, 200);
  float b = random(0, 150);
  float c = random(0, 200);

  fill(h, b, c);
  
  stroke(10);
  

  float F= frameCount;
  for(int i=1; i< W* 1.6; i++){
    float y= sqrt(i*150);
    float r= pow(i/W, 3) *i +150;
    float N= noise(i*0.1-F)*10+F*0.05;
    strokeWeight(1);
    rect( cos(N)*r*2.5, y+ sin(N)*r*2.5, cos(N+0.01)*r, y+ sin(N+0.01)*r);
   

  }

   //saveFrame("frames01/###.png");


}
   
   void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
}
