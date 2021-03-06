int scale = 20;

int w = 1800, h = 1000;
int cols, rows;
float[][] z;

float noise_step = 0.2;
float zoff = 0;

float a = 0.0;
float rSize; 

float diameter;
float angle = 0;

void setup() {
  size(1024, 768, P3D);

  cols = round(w / scale);
  rows = round(h / scale);

  diameter = height - 400;

}

void draw() {
  background(0);
  stroke(#24698f);
  noFill();

  translate(width / 2, height / 2);
  rotateX(PI / 2);

  translate(-w / 2, -h / 2 + 50);

  z = new float[cols][rows];
  for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {
      z[x][y] = map(noise(x * noise_step, y * noise_step -zoff), 0, 1, -100, 100);
    }
  }
  zoff += 0.1;

  for (int y = 0; y < rows - 1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      vertex(x * scale, y * scale, z[x][y]);
      vertex(x * scale, (y + 1) * scale, z[x][y+1]);
    }
    endShape();
  }


  a += 0.005;
  if(a > TWO_PI) {
    a = 0.0;
  }

  float d1 = 1 + (sin(angle) * diameter/2) + diameter/2;
  float d2 = 2 + (sin(angle + PI) * diameter-100) + diameter-100;
  float d3 = 3 + (sin(angle + PI) * diameter/3) + diameter/3;
  float d4 = 10 + (sin(angle + PI/3) * diameter/3) + diameter/4;

  translate(850, 300, 20);

  rotateX(a);
  rotateY(a * 2.0);
  stroke(#B22222);
  noFill();
  ellipse(-rSize, -rSize, d3/2, d1*3);

  rotateX(a * 1.001);
  rotateY(a * 2.002);
  fill(#FFA500);
  ellipse(-rSize, -rSize, d4*3, d2 /5);

  rotateX(a * 2);
  rotateY(a * 4);
  fill(#B22222);
  ellipse(-rSize, -rSize, d1, d2*2);

rotateX(a * 1.001);
  rotateY(a * 2.002);
  fill(0);
  ellipse(-rSize, -rSize, d3*4, d2);

  rotateX(a * 1.001);
  rotateY(a * 2.002);
  fill(#FFA500);
  ellipse(-rSize, -rSize, d1*4, d4 /8);

  rotateX(a * 2);
  rotateY(a * 4);
  fill(#B22222);
  ellipse(-rSize, -rSize, d4/3, d1*20);

rotateX(a * 1.001);
  rotateY(a * 2.002);
  fill(0);
  ellipse(-rSize, -rSize, d4*4, d1);

  angle += 3;
  
  saveFrame("frames02/###.png");

}
