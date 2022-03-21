class Splatter {
  float x;
  float y;
  float r;
  float g;
  float b;
  Splatter() {
    x = random(1)*width;
    y = random(1)*height;
    r = random(255);
    g = random(255);
    b = random(255);
  }
  Splatter(int x, int y) {
    this.x = x;
    this.y = y;
    r = random(1);
    g = random(1);
    b = random(1);
  }
  
  float gaus(float sd, float mean)
  {
      float num = (float) generator.nextGaussian();

      // Multiply by the standard deviation and add the mean.
      return sd * num + mean;
  }
  
   void display() {
    noStroke();
    fill(r,g,b,10);
    
    // Multiply by the standard deviation and add the mean.
    float posX = gaus(10,x);
    float posY = gaus(10,y);
  
    ellipse(posX,posY,16,16); //<>//
  }
    void next() {
  }
}
