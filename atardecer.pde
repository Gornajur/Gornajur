int scale = 20;
int w = 1800, h = 1000;
int cols, rows;
float[][] z;
float noise_step = 0.2;
float zoff = 0;



void setup() {
  size(1024, 768, P3D);
  frameRate(10);
  cols = round(w / scale);
  rows = round(h / scale);

}

void draw() {

  background(5);
  stroke(#24698f);
  noFill();

  translate(width / 2, height / 1.7);
  rotateX(PI / 3);

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



  stroke(10);
  noFill();

  translate(-250, -600);
  rotateX(PI / 5);

  translate(-100, -500);

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



directionalLight(255, 69, 0, 0, -1/5, -1);

  translate(1050, -500);
  rotateY(0);
  fill(#FF4500);
  noStroke();
  sphereDetail(60);
  sphere(800);

  saveFrame("frames03/###.png");

}
