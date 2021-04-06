
//Blueberry[] blueberries = new Blueberry[int(random(5, 15))];
ArrayList<Blueberry> blueberries;
int bluepoints = 0;

void setup() {

  size (800, 600);
  blueberries = new ArrayList<Blueberry>();
  float q = random(5, 15);

  for (int i = 0; i < q; i++) {
    blueberries.add(new Blueberry());
  }
}

void draw() {

  background(100);

  for (Blueberry b : blueberries) {
    b.display();
    b.clicked();
    
     textSize(21);
     fill(24, 8, 51);
     text("Blueberries: " + bluepoints, 10, 25);
  }
  
 
}


void mouseClicked() {

  for (Blueberry b : blueberries) {
    if (b.radius > dist(mouseX, mouseY, b.posX, b.posY)) {
      b.displayBerry = true;
      bluepoints = bluepoints + 1;
    }
  }
}

// how to delete ball from top instead of bottom
