class Blackberry {

  //data of the object
  float posX, posY;
  float radius;
  boolean displayBerry;
  float velY;


  Blackberry() {
    posX = random(100, 600);
    posY = random(100, 600);
    
    displayBerry = false;
    radius = random(60, 100);
    velY = 7;
    
  }

  void display() {

    fill(10);
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
