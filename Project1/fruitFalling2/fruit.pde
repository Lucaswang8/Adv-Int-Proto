class Fruit{

  float posX, postY;
  float radius;
  float weight;
  boolean ripe;
  color fCol;
  boolean picked;
  
  Fruit() {
    posX = random(100, 640);
    posY = random(100, 300);
    
    ripe = false;
    picked = false;
    
    radius = random(60, 120);
  }
  
  //void ripe {
  //  if (ripe == false) {
  //    fcol = color(255);
  //    }
  //  else {
  //    fcol = color(255, 000, 000);
  //    }
  //}
  
  void display {
    fill(fCol);
        if (ripe == false) {
      fcol = color(255);
      }
    else {
      fcol = color(255, 000, 000);
      }
  }
    circle(posX, posY, radius);
  }
}

void mousePressed() {
   if (ripe == true){
     picked == true;
   }
   
   else {
     picked == false;
     // fruit shakes? text appears saying its not ripe yet
   }
}

void picked {

  
}
