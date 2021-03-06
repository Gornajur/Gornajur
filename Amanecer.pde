int scale = 20;

int w = 1800, h = 1000;
int cols, rows;
float[][] z;

float noise_step = 0.2;
float zoff = 0;


float s=10;
float m=1;

float sc=1;
float mc=0.01;

float xoff;
float yoff;
float offinc=0.01;

float c;



float diameter;
float angle = 0;


void setup() {
  size(1024, 768, P3D);
  frameRate(11);

  cols = round(w / scale);
  rows = round(h / scale);


  diameter = height - 400;

}

void draw() {
  background(0);


  stroke(#24698f);
  noFill();

  translate(width / 2, height / 2);
  rotateX(PI);

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



  float d1 = 1 + (sin(angle) * diameter/2) + diameter/2;
  float d2 = 2 + (sin(angle + PI) * diameter-100) + diameter-100;
  float d3 = 3 + (sin(angle + PI) * diameter/3) + diameter/3;
  float d4 = 10 + (sin(angle + PI/3) * diameter/3) + diameter/4;


  noStroke();
  fill(0);
  ellipse(600, 400, d1, d1);

  fill(0);
  ellipse(850, 700, d2, d2);


  fill(0);
  ellipse(700, 200, d3, d3);

  fill(0);
  ellipse(600,600, d4, d4);

  fill(0);
  ellipse(150, 750, d1, d1);

  fill(0);
  ellipse(500,900, d4+ 300, d4+ 300);

  fill(0);
  ellipse(950, 650, d4- 300, d4- 300);

  fill(0);
  ellipse(350,700, d4+ 300, d4+ 300);

  angle += 0.03;

  directionalLight(178, 34, 34, d1, d1, 10);

  translate(d1 + 400, d1 +100, d4* 33);
  rotateY(0);
  fill(#FF4500);
  noStroke();
  sphereDetail(60);
  sphere(800);
  
  saveFrame("frames01/###.png");

}
