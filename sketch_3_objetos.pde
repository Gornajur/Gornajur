


int r = 0;
int x = 0;
int circles = 300;
float a;

int dim;


void setup(){

  size(700, 800);
  background(0);
  smooth(5);
  a = width /2;


  dim = width/2;
  colorMode(HSB, 360, 100, 100);
  noStroke();
  ellipseMode(RADIUS);
  frameRate(3);

  
}

void draw(){



stroke(0);
strokeWeight(1);
while (r  < width){

ellipse(width/2, height/2, width - r , width - r);   // while loop
  r = r + 10;
}

   stroke(0);
   strokeWeight(1);

  while (x  < width){
  line(x, 0, x,height);   // while loop
  x = x + 20;
}

   
for (int x = 0; x <= width; x+=dim) {
    drawGradient(x, height/2);
  }

saveFrame("frames01/###.png");
  
}

void drawGradient(float x, float y) {
  int radius = dim/2;
  float h = random(0, 360);
  for (int r = radius; r > 0; --r) {
    fill(h, 100, 100);
    ellipse(x, y, r, r);
    h = (h + 1) % 360;
  }
}
