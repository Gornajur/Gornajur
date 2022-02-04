

int scale = 30;
int w = 1800, h = 1000;
int cols, rows;
float[][] z;
float noise_step = 0.2;
float zoff = 0;
float angle = PI /200;
float jitter;

float diameter;
float angle2 = 0;


void setup() {
  size(1024, 768, P3D);

  cols = round(w / scale);
  rows = round(h / scale);
  frameRate(50);


}

void draw() {

  background(0);

  rotateY(PI *2);

  stroke(30);
  fill(#5F9EA0);

  translate(width / 2.5, height / 1.7);
  rotateX(PI + 20);
  rotateY(PI - 15);
  rotateZ(-100);

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
      vertex(x * scale, (y - 1) * scale, z[x][y+1]);
    }
    endShape();
  }


  translate(750, -100, 0);
  rotateY(angle);

  angle=angle+PI/50;

  noFill();
  stroke(#FF8C00);
  sphereDetail(700);
  sphere(800);

  translate(width / 5, height / 3);

  stroke(10);
  noLights();
  noFill();
  sphereDetail(50);
  sphere(50);


  translate(width / 351, height / 353);

  fill(#DC143C);
  noLights();
  sphereDetail(10);
  sphere(40);


  translate(width / 101, height / 103, 100);

  directionalLight(255, 69, 0, 1, -1/3, -1);
  fill(#DC143C);
  noStroke();
  sphereDetail(10);
  sphere(12);

  saveFrame("frames01/###.png");

  }
