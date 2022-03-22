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
    //// A uniform distribution of step sizes. Change this!
    //float stepsize = random(0,10);
    //float stepx = random(-stepsize,stepsize);
    //float stepy = random(-stepsize,stepsize);
    
    // A uniform distribution of step sizes. Change this!
    float stepx = montecarlo()*10;
    float stepy = montecarlo()*10;
    if(random(1)>0.5)
      x += stepx;
    else
      x -= stepx;
    if(random(1)>0.5)
      y += stepy;
    else
      y -= stepy;
  
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

float montecarlo() {
  // We do this “forever” until we find a qualifying random value.
  while (true) {
    // Pick a random value.
    float r1 = random(1);
    // Assign a probability.
    float probability = r1*r1;
    // Pick a second random value.
    float r2 = random(1);

    //[full] Does it qualify?  If so, we’re done!
    if (r2 > probability) {
      return r1;
    }
    //[end]
  }
}
