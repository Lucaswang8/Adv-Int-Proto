class Blueberry {

  //data of the object
  float posX, posY;
  float radius;
  float bCol;
  boolean displayBerry = false;

  Blueberry() {
    posX = random(100, 600);
    posY = random(100, 600);
    radius = random(50, 100);
  }

  //checking overlaps not working
  boolean overlaps(Blueberry other) {
    float d = dist(posX, posY, other.posX, other.posY);
    if (d < radius + other.radius) {
      return true;
    } else {
      return false;
    }
  }

  //functionality of the object
  void display() {

    ellipse(posX, posY, radius, radius);

    //disappears when clicked
    if (displayBerry) {
      noFill();
      noStroke();
    } else {
      fill(24, 8, 51);
      stroke(0);
      strokeWeight(1);
    }
  }
}
