float t;

void setup() {
  size(640,360);
  background(255);
  t = 0;
}

void draw() {
  loadPixels();
  // Start xoff at 0.
  float xoff = 0.0; //[bold]
  for (int x = 0; x < width; x++) {
    // For every xoff, start yoff at 0.
    float yoff = 0.0; //[bold]
  
    for (int y = 0; y < height; y++) {
      if(x*height<y*width)
        noiseDetail(3,0.5);
      else
        noiseDetail(8,0.65);
      // Use xoff and yoff for noise().
      float bright = map(noise(xoff+t,yoff),0,1,0,256*256*256-1); //[bold]
      // Use x and y for pixel location.
      float r = bright%256;
      float g = (bright/256)%256;
      float b = bright/(256*256);
      pixels[x+y*width] = color(r,g,b);
      // Increment yoff.
      yoff += 0.0003; //[bold]
    }
    // Increment xoff.
    xoff += 0.0003;  //[bold]
  }
  updatePixels();
  t+=0.0005;
}
