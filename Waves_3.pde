

  PImage img;
  int ranges = 300;


void setup(){
  size(800, 800);
  frameRate(10);
  smooth();

  img = loadImage("Barco.png");

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
    stroke( random(0, 240));

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
    //stroke(#4682B4);

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

    translate( 0, 30);

    beginShape();
    //stroke(#4682B4);

    for (int x = -10; x < width + 11; x += 20) {
      float n = noise(x * 0.001, i * 0.01, frameCount * 0.02);
      float y = map(n, 0, 1, 0, height);
      vertex(x, y);
    }
    endShape();
  }

  popMatrix();


  image(img, mouseX, mouseY, width/4, height/10);

}
