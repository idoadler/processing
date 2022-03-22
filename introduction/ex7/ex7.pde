import java.util.*;
class Walker {
  float x,y;
  float x2,y2;
  float tx,ty;
  Walker() {
    x = width/2;
    y = height/2;
    x2 = x;
    y2 = y;
    tx = 0;
    ty = 10000;
  }
   void display() {
    stroke(1);
    line(x,y,x2,y2);
    x2 = x;
    y2 = y;
  }
    void step() {
    // A uniform distribution of step sizes. Change this!
    float stepx = noise(tx)*10-5;
    float stepy = noise(ty)*10-5;
    x += stepx;
    y += stepy;
    //[full] Move forward through “time.”
    tx += 0.01;
    ty += 0.01;
  
    if(y<0)
      y=0;
    if(x<0)
      x=0;
    if(y>height)
      y=height;
    if(x>width)
      x=width;
    //[end]
  }
}
  Random generator;
  Walker w;
void setup() {
  generator = new Random();
  size(640,360);
  // Create the Walker.
  w = new Walker();  //[bold]
  background(255);
}

void draw() {
  //[full] Call functions on the Walker.
  w.step(); //[bold]
  w.display(); //[bold]
  //[end]
}
