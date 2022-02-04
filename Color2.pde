
  int W;
  int Y_AXIS = 5;
  color b1, b2, c1, c2;

  
  void setup(){

  size(800,800, P3D);
  W= min(width, height);
  frameRate(5);
  background(250);
  
}

void draw(){
  
 
  translate(width/2, height/2, -150);
  //rotateZ(PI/2);
  float h = random(0, 200);
  float b = random(0, 150);
  float c = random(0, 200);
  
  stroke(10);
  
  float F= frameCount;
  for(int i=1; i< W* 0.6; i++){
    float y= sqrt(i*150);
    float r= pow(i/W, 3) *i +150;
    float N= noise(i*9.1-F)*10+F*0.05;
    
    fill(h, b, c);
    rect( cos(N)*r*4.5, y+ sin(N)*r*2.5, cos(N+0.01)*r, y+ sin(N+0.01)*r);
    
    translate(-10, -10, -200);
    fill(50);
    strokeWeight(0.3);
    quad(30, 150, cos(N)*r*1.5, y+ sin(N)*r*0.5, cos(N+0.01)*r, y+ sin(N+0.01)*r, cos(N+0.01)*r* 0.7, y+ sin(N+0.01)*r* 0.7);
  }
   

}
   
  
