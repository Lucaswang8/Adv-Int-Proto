class Blueberry {

  //data of the object
  float posX, posY;
  float radius;
  boolean displayBerry;


  Blueberry() {
    posX = random(100, 600);
    posY = random(100, 600);
    
    displayBerry = false;
    radius = random(50, 80);

    
  }

  //checking overlaps not working
  //boolean overlaps(Blueberry other) {
  //  float d = dist(posX, posY, other.posX, other.posY);
  //  if (d < radius + other.radius) {
  //    return true;
  //  } else {
  //    return false;
  //  }
  //}

  //functionality of the object
  void display() {

    fill(24, 8, 51);
    stroke(255);
    strokeWeight(2);
    ellipse(posX, posY, radius, radius);
      stroke(0);


  }
  
  void clicked() {
    if(displayBerry) {
       posX = -100;
       posY = -100;
    }
  }
  
}
