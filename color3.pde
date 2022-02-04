
int W;

float dt = 1/60.0;
float r = 100.0;

// Frecuencia
float f = 1.0;

// Velocidad angular
float w = 0.0;

// Tiempo
float t = 0.0 - dt;

PVector pos = new PVector(0, 0);



void setup(){

   size(800,800, P3D);
   W= min(width, height);
   frameRate(15);
}

void draw(){

   background(100);

   translate(width /2, height/2, -300);


   float h = random(0, 200);
   float b = random(0, 150);
   float c = random(0, 200);

   fill(h, b, c);


   stroke(10);

   noFill();
   ellipse(10, 10, 600, 550);
   ellipse(10, 10, 400, 400);
   ellipse(10, 10, 300,300);
   ellipse(10, 10, 230, 230);
   ellipse(10, 10, 210, 210);
   ellipse(10, 10, 190, 190);
   ellipse(10, 10, 170, 170);
   ellipse(10, 10, 150, 150);
   ellipse(10, 10, 130, 130);
   ellipse(10, 10, 110, 110);

   fill(10);
   ellipse( 10, 10, 90, 90);

   fill(#FF4500);
   ellipse(10, 10, 500, 500);

   fill(#FFEFD5);
   ellipse(10, 10, 1100, 1000);


   w = TWO_PI * f;

   t += dt;

   pos.x = r/2 * cos(w * t);
   pos.y = r/2 * sin(w * t);

   fill(10);
   ellipse(pos.x, pos.y, 350, 350);

   
   noStroke();

   float F= frameCount;
   for(int i=1; i< W*1.6; i++){
      float y= sqrt(i*1000);
      float r= pow(i/W, 3) *i +150;
      float N= noise(i*0.1-F)*3+F*0.05;

      fill(#FF4500);
      rect( cos(N)*r, y + sin(N)*r, cos(N+0.02)*r, y+ sin(N+0.02)*r);      

   }

    //saveFrame("frames01/###.png");

}
