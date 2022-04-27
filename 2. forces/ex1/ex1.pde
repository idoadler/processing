class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
 
  Mover() {
    mass = 1;
    location = new PVector(30,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
 
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
 
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    if ((location.x < 0 && velocity.x < 0) || (location.x > width && velocity.x > 0)) {
      velocity.x *= -1;
    }
    if ((location.y < 0 && velocity.y < 0) || (location.y > height && velocity.y > 0)) {
      velocity.y *= -1;
    }
    acceleration.mult(0);
  }
 
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,mass*16,mass*16);
  }
 
  void checkEdges() {
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }
 
    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }
  }
}
  
Mover m;
PVector wind = new PVector(0.1,0);
PVector gravity = new PVector(-0.01,0);
void setup() {
  size(640,360);
  m = new Mover();
  background(255);
}

void draw() {
  m.applyForce(wind);
  m.applyForce(gravity);
  m.update();
  background(255);
  m.display();
}
