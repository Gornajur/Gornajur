
int scale = 40;
int w = 1000, h = 600;
int cols, rows;
float[][] z;
float noise_step = 0.2;
float zoff = 0;



void setup() {
  size(1000, 600, P3D);

  cols = round(w / (scale));
  rows = round(h / (scale));
  frameRate(8);

}

void draw() {

  background(220);

  pushMatrix();

  stroke(#FFEA00);
  fill(#FDDA0D);

  translate( 150, 0, -100);
  rotateX(PI / 1.5);
  rotateY(PI / 3);


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

  popMatrix();



  pushMatrix();

  stroke(#6495ED);
  fill(#0047AB);

  translate(185, 0, -100);
  rotateX(PI / 1.5);
  rotateY(PI / 3);


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

  popMatrix();



  pushMatrix();

  stroke(#E35335);
  fill(#DC143C);

  translate( 250, 0, -100);
  rotateX(PI / 1.5);
  rotateY(PI / 3);


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

  popMatrix();


  pushMatrix();

  stroke(10);
  //strokeWeight(100);
  fill(50, 200);
  //noFill();

  translate(width / 2, height / 2, 500);
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


  popMatrix();

  //saveFrame("frames01/###.png");

  }
