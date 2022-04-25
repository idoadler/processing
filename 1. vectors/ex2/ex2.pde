class Walker {
  PVector pos;
  Walker() {
    pos = new PVector(width/2,height/2);
  }
   void display() {
    stroke(0);
    point(pos.x,pos.y);
  }
    void step() {
    // 0, 1, 2, or 3
    var choice = random(4);
    //[full] The random “choice” determines our step.
    if (choice < 1.5) {
      if (pos.x < width)
        pos.x++;
    } else if (choice < 2) {
      if (pos.x > 0)
        pos.x--;
    } else if (choice < 3.5) {
      if (pos.y < height)
        pos.y++;
    } else {
      if (pos.y > 0)
        pos.y--;
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
