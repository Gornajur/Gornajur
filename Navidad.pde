
float angle;
float jitter;

float a = 0.0;
float rSize; 

float diameter;
//float angle = 0;




void setup() {
  size(1024, 768, P3D);
  frameRate(10);

  diameter = height - 400;

}



void draw() {


  background(20);
  strokeWeight(1.5);


pushMatrix();

a += 0.005;
  if(a > TWO_PI) {
    a = 0.0;
  }

  //bola verde


if (second() % 2 == 0) { 
    jitter = random(-5, 5);
  }
  angle = angle /2 + jitter *5;
  float c = cos(angle);
  
  translate(width/3, height/3, 0);
  rotate(c);
  noFill();
  stroke(#FF69B4);
  sphereDetail(5);
  sphere(150);

  popMatrix();


  pushMatrix();

  if (second() % 2 == 0) { 
    jitter = random(-5, 5);
  }
  angle = angle /2 + jitter *3;
  float c2 = cos(angle);

  translate(width/3, height/3, 0);
  rotate(c2);
  noFill();
  stroke(#ADFF2F);
  sphereDetail(5);
  sphere(150);

  popMatrix();

  pushMatrix();

  if (second() % 2 == 0) { 
    jitter = random(-5, 5);
  }
  angle = angle /2 + jitter *4;
  float c3 = cos(angle);
  
  translate(width/3, height/3, 0);
  rotate(c3);
  noFill();
  stroke(#556B2F);
  sphereDetail(5);
  sphere(150);

  popMatrix();

  pushMatrix();

  if (second() % 2 == 0) { 
    jitter = random(-5, 5);
  }
  angle = angle /2 + jitter *5;
  float c4 = cos(angle);

  translate(width/3, height/3, 0);
  rotate(c4);
  noFill();
  stroke(#008000);
  sphereDetail(5);
  sphere(150);

  popMatrix();

// bola roja

  pushMatrix();

if (second() % 2 == 0) { 
    jitter = random(-2, 2);
  }
  angle = angle + jitter;
  float c5 = cos(angle);
  
  translate(width/2, height/2, 0);
  rotate(c5);
  noFill();
  stroke(#FF4500);
  sphereDetail(5);
  sphere(150);

  popMatrix();


  pushMatrix();

if (second() % 2 == 0) { 
    jitter = random(-3, 3);
  }
  angle = angle + jitter*2;
  float c6 = cos(angle);
  
  translate(width/2, height/2, 0);
  rotate(c6);
  noFill();
  stroke(#DC143C);
  sphereDetail(5);
  sphere(150);

  popMatrix();


  pushMatrix();

if (second() % 2 == 0) { 
    jitter = random(-2, 2);
  }
  angle = angle + jitter*3;
  float c7 = cos(angle);
  
  translate(width/2, height/2, 0);
  rotate(c7);
  noFill();
  stroke(#228B22);
  sphereDetail(5);
  sphere(150);

  popMatrix();


  pushMatrix();

if (second() % 2 == 0) { 
    jitter = random(-2, 2);
  }
  angle = angle + jitter*4;
  float c8 = cos(angle);
  
  translate(width/2, height/2, 0);
  rotate(c8);
  noFill();
  stroke(#8B0000);
  sphereDetail(5);
  sphere(150);

  popMatrix();

//bola amarilla

pushMatrix();

if (second() % 2 == 0) { 
    jitter = random(-2, 2);
  }
  angle = angle + jitter;
  float c9 = cos(angle);
  
  translate(400, 500, 0);
  rotate(c9);
  noFill();
  stroke(#FF8C00);
  sphereDetail(5);
  sphere(150);

  popMatrix();


  pushMatrix();

if (second() % 2 == 0) { 
    jitter = random(-2, 2);
  }
  angle = angle + jitter *2;
  float c10 = cos(angle);
  
  translate(400, 500, 0);
  rotate(c10);
  noFill();
  stroke(#FFFF00);
  sphereDetail(5);
  sphere(150);

  popMatrix();


  pushMatrix();

if (second() % 2 == 0) { 
    jitter = random(-2, 2);
  }
  angle = angle + jitter*3;
  float c11 = cos(angle);

  translate(400, 500, 0);
  rotate(c11);
  noFill();
  stroke(#F0E68C);
  sphereDetail(5);
  sphere(150);

  popMatrix();


  pushMatrix();

if (second() % 2 == 0) { 
    jitter = random(-2, 2);
  }
  angle = angle + jitter*4;
  float c12 = cos(angle);
  
  translate(400, 500, 0);
  rotate(c12);
  noFill();
  stroke(#4682B4);
  sphereDetail(5);
  sphere(150);

  popMatrix();


// Estrella

  float d1 = 1 + (sin(angle) * diameter/2) + diameter/2;
  float d2 = 2 + (sin(angle + PI) * diameter-100) + diameter-100;
  float d3 = 3 + (sin(angle + PI) * diameter/3) + diameter/3;
  float d4 = 10 + (sin(angle + PI/3) * diameter/3) + diameter/4;

  translate(400, 350, 20);

  rotateX(a);
  rotateY(a * 2.0);
  fill(#B22222);
  noStroke();
  //ellipse(-rSize, -rSize, d1/3, d1);

  rotateX(a * 1.001);
  rotateY(a * 2.002);
  fill(#228B22);
  noStroke();
  //ellipse(-rSize, -rSize, d2, d2/10);

  rotateX(a * 2);
  rotateY(a * 4);
  stroke(#B22222);
  strokeWeight(2);
  noFill();
  ellipse(-rSize, -rSize, d1, d2*2);

  rotateX(a * 4);
  rotateY(a * 5);
  stroke(#FFA500);
  strokeWeight(1);
  noFill();
  ellipse(-rSize, -rSize, d1*4, d4 /8);


  rotateX(a * 1.001);
  rotateY(a * 2.002);
  stroke(#228B22);
  strokeWeight(2);
  noFill();
  ellipse(-rSize, -rSize, d1*3, d4);


  rotateX(a /3);
  rotateY(a * 2.002);
  stroke(#4682B4);
  strokeWeight(2);
  noFill();
  ellipse(-rSize, -rSize, d1*2, d4);


  rotateX(a * 3);
  rotateY(a * 2);
  rotateZ(a * 2);
  stroke(#FF69B4);
  strokeWeight(2);
  noFill();
  ellipse(-rSize, -rSize, d1*3, d4);


  rotateX(a);
  rotateY(a);
  stroke(#FF8C00);
  strokeWeight(2);
  noFill();
  ellipse(-rSize, -rSize, d1*3, d4);



  }
