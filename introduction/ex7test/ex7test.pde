class Walker {
  float x,y;

  float tx,ty;

  Walker() {
    tx = 0;
    ty = 10000;
  }

  void step() {
    //[full] x- and y-location mapped from noise
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
    //[end]

    //[full] Move forward through “time.”
    tx += 0.01;
    ty += 0.01;
    //[end]
  }
}

Walker walker;

void setup() {
  size(640,360);
  background(255);
  walker = new Walker();
}

void draw() {
  walker.step();
  ellipse(walker.x,walker.y,16,16);
}
