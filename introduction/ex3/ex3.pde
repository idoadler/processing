class Walker {
  int x;
  int y;
  Walker() {
    x = width/2;
    y = height/2;
  }
   void display() {
    stroke(0);
    point(x,y);
  }
    void step() {
    // 0, 1, 2, or 3
    var choice = random(8);
    //[full] The random “choice” determines our step.
    if (choice < 1) {
      if (x < width)
        x++;
    } else if (choice < 2) {
      if (x > 0)
        x--;
    } else if (choice < 3) {
      if (y < height)
        y++;
    } else if (choice < 4) {
      if (y > 0)
        y--;
    } else if (choice < 6) {
      if (y > mouseY)
        y--;
      else
        y++;
    } else {
      if (x > mouseX)
        x--;
      else
        x++;
    }
    //[end]
  }
}
  
Walker w;
void setup() {
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
