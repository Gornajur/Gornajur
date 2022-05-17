

 int ranges = 300;


  void setup(){
  size(800, 800);
  frameRate(10);
  smooth();
}


  void draw(){

  background(#DC143C);
  noFill();
  strokeWeight(1.5);

   pushMatrix();

   for (int i = 0; i < ranges; i++) {
    float paint = map(i, 0, ranges, 0, 240);
    //stroke(paint);

    translate( 0, -3);

    beginShape();
    stroke( #8B0000);

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
    //stroke(10);
    
    translate( 0, 5);

    beginShape();
    
     strokeWeight(2);
     
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
    float paint = map(i, 0, ranges /2, #B0C4DE, #DC143C);
    //stroke(paint);
    stroke(#B0C4DE);
    
    //beginShape();
    for (int x = -10; x < width + 11; x += 20) {
      float n = noise(x * 0.001, i * 0.01, frameCount * 0.02);
      float y = map(n, 0, 1, 0, height);
      vertex(x, y);
    }
    //endShape();

  }
  
  popMatrix();

}
