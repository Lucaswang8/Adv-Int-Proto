class Strawberry {

  //data of the object
  float posX, posY;
  float radius;
  boolean displayBerry;
  float velY;

  Strawberry() {
    posX = random(100, 600);
    posY = random(100, 600);
    
    displayBerry = false;
    radius = random(80, 100);
    velY = 7;
    
  }

  void display() {

    //fill(245,66,90);
    //stroke(0);
    //strokeWeight(2);
    //ellipse(posX, posY, radius, radius);
    //  stroke(0);

    imageMode(CENTER);
    image(strawberry, posX, posY, radius, radius);

  }
  
  void clicked() {
    if(displayBerry) {
       posY = posY + velY;
    }
  }
  
}
