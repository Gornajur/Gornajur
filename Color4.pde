
int W;
int Y_AXIS = 1;
color b1, b2, c1, c2;


  void setup(){

  size(800,800);
  W= min(width, height);
  frameRate(5);

  b1 = color(#4682B4);
  b2 = color(#191970);
  c1 = color(#FFD700);
  c2 = color(#B22222);

    setGradient(0, 0, width, height/2, b2, b1, Y_AXIS);
    setGradient(0, height/2, width, height/2, c2, c1, Y_AXIS);

}


void draw(){

  //background(200);
    

  translate(width /2, height/2);

  float h = random(0, 200);
  float b = random(0, 150);
  float c = random(0, 200);

  fill(h, b, c);

  stroke(10);

  float F= frameCount;
  for(int i=1; i< W*1.6; i++){
    float y= sqrt(i*150);
    float r= pow(i/W, 3) *i +150;
    float N= noise(i*0.1-F)*99+F*0.05;
    //noStroke();

    rect( cos(N)*r*1.5, y + sin(N)*r*1.5, cos(N+0.02)*r/5, y+ sin(N+0.02)*r/4);

  }

    
    noFill();
    ellipse(0, 0, 300, 300);
    ellipse(0, 0, 200, 200);
    ellipse(0, 0, 180, 180);
    ellipse(0, 0, 160, 160);
    ellipse(0, 0, 140, 140);
    ellipse(0, 0, 120, 120);
    ellipse(0, 0, 100, 100);
    ellipse(0, 0, 80, 80);

    fill(0);
    ellipse(0, 0, 80, 80);
    
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
