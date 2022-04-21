Eye e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13;

float max_distance;

PShape currentShape;
int tileCount = 10;
float tileWidth, tileHeight;
float shapeSize = 70;
float newShapeSize = shapeSize;
float shapeAngle = 0;
float maxDist;
color shapeColor = color(0);
int fillMode = 0;
int sizeMode = 1;

//PImage bg;

void setup(){
  size(800, 800);
 
  smooth();

   noStroke();
   
  e1 = new Eye( 200,  200, 120);
  e2 = new Eye( 480, 250,  80);  
  e3 = new Eye( 380, 280, 100);
  e4 = new Eye( 470, 330, 60);
  e5 = new Eye( 300, 330, 70);  
  e6 = new Eye( 200, 350, 130);
  e7 = new Eye( 330, 420, 100);
  e8 = new Eye( 340, 150, 50);
  e9 = new Eye( 310, 220, 60);
  e10 = new Eye( 270, 270, 50);
  e11 = new Eye( 370, 200, 50);
  e12 = new Eye( 440, 160, 100);
  e13 = new Eye( 410, 380, 50);
  
  
   max_distance = dist(0, 0, width, height);
   
  tileWidth = width/float(tileCount);
  tileHeight = height/float(tileCount);
  maxDist = sqrt(sq(width)+sq(height));
  //svg image flying bird
  currentShape = loadShape("flyingbird_roj0.svg");
} 

void draw(){
    background(10);
    smooth();


    for(int i = 0; i <= width; i += 20) {
    for(int j = 0; j <= height; j += 20) {
      float size = dist(mouseX, mouseY, i, j);
      size = size/max_distance * 70;
      fill(250);
      ellipse(i, j, size, size);
    }
  }


  for (int gridY=0; gridY<tileCount; gridY++) {
    for (int gridX=0; gridX<tileCount; gridX++) {

      float posX = tileWidth*gridX - tileWidth/2;
      float posY = tileHeight*gridY + tileWidth/2;

      // calculate angle between mouse position and actual position of the shape
      float angle = atan2(mouseY-posY, mouseX-posX) + radians(shapeAngle);

      if (sizeMode == 0) newShapeSize = shapeSize;
      if (sizeMode == 1) newShapeSize = shapeSize*1.5-map(dist(mouseX,mouseY,posX,posY),0,500,5,shapeSize);
      if (sizeMode == 2) newShapeSize = map(dist(mouseX,mouseY,posX,posY),0,500,5,shapeSize);

      if (fillMode == 0) currentShape.enableStyle();
      if (fillMode == 1) {
        currentShape.disableStyle();
        fill(shapeColor);      
      }
      if (fillMode == 2) {
        currentShape.disableStyle();
        float a = map(dist(mouseX,mouseY,posX,posY), 0,maxDist, 255,0);
        fill(shapeColor, a);      
      }
      if (fillMode == 3) {
        currentShape.disableStyle();
        float a = map(dist(mouseX,mouseY,posX,posY), 0,maxDist, 0,255);
        fill(shapeColor, a);      
      }

      pushMatrix();
      translate(posX, posY);
      rotate (angle);
      shapeMode (CENTER);

      noStroke();
      shape(currentShape, 0,0, newShapeSize,newShapeSize);
      popMatrix();
    }
  }
  //saveFrame("frames02/###.png");
  
  e1.update(mouseX, mouseY);
  e2.update(mouseX, mouseY);
  e3.update(mouseX, mouseY);
  e4.update(mouseX, mouseY);
  e5.update(mouseX, mouseY);
  e6.update(mouseX, mouseY);
  e7.update(mouseX, mouseY);
  e8.update(mouseX, mouseY);
  e9.update(mouseX, mouseY);
  e10.update(mouseX, mouseY);
  e11.update(mouseX, mouseY);
  e12.update(mouseX, mouseY);
  e13.update(mouseX, mouseY);
  

  e1.display();
  e2.display();
  e3.display();
  e4.display();
  e5.display();
  e6.display();
  e7.display();
  e8.display();
  e9.display();
  e10.display();
  e11.display();
  e12.display();
  e13.display();
  
 
}

class Eye {
  int x, y;
  int size;
  float angle = 0.0;
  
  Eye(int tx, int ty, int ts) {
    x = tx;
    y = ty;
    size = ts;
 }

  void update(int mx, int my) {
    angle = atan2(my-y, mx-x);
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    fill(255);
    ellipse(0, 0, size, size);
    rotate(angle);
    fill(0);
    ellipse(size/4, 0, size/2, size/2);
    popMatrix();
  }
}


void keyPressed() {
  
  if (key == 'g' || key == 'G') {
    tileCount = tileCount+5;
    if (tileCount > 20) {
      tileCount = 10;
    }
    tileWidth = width/float(tileCount);
    tileHeight = height/float(tileCount);
  }

 //Screenshot Saving Capability
   if ( key == 's' || key == 'S') saveFrame ("screenshot.png");   
 
  if (keyCode == UP) shapeSize +=5;
  if (keyCode == DOWN) shapeSize = max(shapeSize-5, 5);
  if (keyCode == LEFT) shapeAngle -=5;
  if (keyCode == RIGHT) shapeAngle +=5;
}
