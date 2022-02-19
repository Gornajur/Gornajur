

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
PImage bg;

void setup(){
  size(800, 800);
  bg = loadImage ("017a.png");
  smooth();

  tileWidth = width/float(tileCount);
  tileHeight = height/float(tileCount);
  maxDist = sqrt(sq(width)+sq(height));
  //svg image flying bird
  currentShape = loadShape("flyingbird.svg");
} 

void draw(){
  background(bg);
  smooth();

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
  
}
