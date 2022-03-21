import java.util.*;
class Walker {
  float x;
  float y;
  float x2;
  float y2;
  Walker() {
    x = width/2;
    y = height/2;
    x2 = x;
    y2 = y;
  }
   void display() {
    stroke(1);
    line(x,y,x2,y2);
    x2 = x;
    y2 = y;
  }
    void step() {
    // 0, 1, 2, or 3
    var choice = random(4);
    float len = (int) gaus(10,0);
    //[full] The random “choice” determines our step.
    if (choice < 2) {
        x+=len;
    } else {
        y-=len;
    }
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


float gaus(float sd, float mean)
{
    float num = (float) generator.nextGaussian();

    // Multiply by the standard deviation and add the mean.
    return sd * num + mean;
}
