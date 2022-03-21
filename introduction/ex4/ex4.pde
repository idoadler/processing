import java.util.*;

// We use the variable name “generator” because what we
// have here can be thought of as a random number generator.
Random generator;
Splatter splatter;

void setup() {
  size(640,360);
  generator = new Random();
  splatter = new Splatter();
}

void draw() {
  splatter.next();
  splatter.display();
}

void mouseClicked() {
  splatter = new Splatter();
}
