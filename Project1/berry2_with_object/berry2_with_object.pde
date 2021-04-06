
Blueberry[] blueberries = new Blueberry[int(random(5, 15))];


void setup() {

  size (800, 600);

  for (int i = 0; i < blueberries.length; i++) {
    blueberries[i] = new Blueberry();
  }
  //for (int i = 0; i < blueberries.length; i++) {
  //  blueberries[i] = new Blueberry(random(20, 40)); }
}

void draw() {

  background(100);

// how to prevent overlaps
  for (int i = 0; i < blueberries.length; i++) {

    if (blueberries[i].overlaps(blueberries[i])) {
      blueberries[i].display();
    }
}
