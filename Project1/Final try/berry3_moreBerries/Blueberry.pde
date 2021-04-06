class Blueberry {

  //data of the object
  float posX, posY;
  float radius;
  boolean displayBerry;
  float velY;


  Blueberry() {
    posX = random(100, 600);
    posY = random(100, 600);
    
    displayBerry = false;
    radius = random(80, 100);
    velY = 7;

    
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

    //fill(24, 8, 51);
    //stroke(0);
    //strokeWeight(2);
    //ellipse(posX, posY, radius, radius);
    //  stroke(0);
      
    imageMode(CENTER);
    image(blueberry, posX, posY, radius, radius);


  }
  
  void clicked() {
    if(displayBerry) {
      posY = posY + velY;
    }
  }
  
}
