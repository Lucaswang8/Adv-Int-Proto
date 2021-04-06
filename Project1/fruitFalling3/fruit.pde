class Fruit {

  float posX, posY;
  float radius;
  boolean ripe;
  color fCol;
  boolean picked;
  float velY;

  Fruit() {
    posX = random(100, 600);
    posY = random(100, 300);

    ripe = false;
    picked = false;

    radius = random(30, 70);
    
    velY = 7;
  }


  void display() {
    fill(fCol); 
    if (ripe == false) {
      fCol = color(255);
    } else {
      fCol = color(255, 000, 000);
    }
    //circle(posX, posY, radius);
    ellipse(posX, posY, radius, radius);
  }

  void picked() {
    println(velY);
    if (picked) {
      posY = posY + velY;
    }

    if (posY >= height-15) {
      velY = 0;
    }
  }
}
