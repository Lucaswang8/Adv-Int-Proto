class Raspberry {

  //data of the object
  float posX, posY;
  float radius;
  boolean displayBerry;
  float velY;

  Raspberry() {
    posX = random(100, 600);
    posY = random(100, 600);
    
    displayBerry = false;
    radius = random(50, 80);
    
    velY = 7;

    
  }

  void display() {

    fill(245,66,200);
    stroke(0);
    strokeWeight(2);
    ellipse(posX, posY, radius, radius);
      stroke(0);


  }
  
  void clicked() {
    if(displayBerry) {
       posY = posY + velY;
    }
  }
  
}
