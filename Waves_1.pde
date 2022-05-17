

int ranges = 100;


void setup(){
  size(800, 800);
  frameRate(20);

  smooth();


}


void draw(){


  background(235);


  noFill();
  strokeWeight(2);

   pushMatrix();

   for (int i = 0; i < ranges; i++) {
    float paint = map(i, 0, ranges, 0, 240);
    stroke(paint);

    translate( 0, -3);

    beginShape();
    stroke(#EADDCA);

    for (int x = -10; x < width + 11; x += 20) {
      float n = noise(x * 0.001, i * 0.01, frameCount * 0.02);
      float y = map(n, 0, 1, 0, height);
      vertex(x, y);
    }
    endShape();
  }

  popMatrix();


  pushMatrix();

  for (int i = 0; i < ranges; i++) {
    float paint = map(i, 0, ranges, 0, 240);
    stroke(paint);

    translate( 0, 5);

    beginShape();
    stroke(#4682B4);

    for (int x = -10; x < width + 11; x += 20) {
      float n = noise(x * 0.001, i * 0.01, frameCount * 0.02);
      float y = map(n, 0, 1, 0, height);
      vertex(x, y);
    }
    endShape();
  }

  popMatrix();

  pushMatrix();

 for (int i = 0; i < ranges; i++) {
    float paint = map(i, 0, ranges, 0, 240);
    stroke(paint);


    beginShape();
    for (int x = -10; x < width + 11; x += 20) {
      float n = noise(x * 0.001, i * 0.01, frameCount * 0.02);
      float y = map(n, 0, 1, 0, height);
      vertex(x, y);
    }
    endShape();
  }

  popMatrix();

  //saveFrame("frames01/###.png");
}
