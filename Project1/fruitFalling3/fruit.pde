class Fruit{

  float posX, posY;
  float radius;
  float weight;
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
  }
  
  //void ripe {
  //  if (ripe == false) {
  //    fcol = color(255);
  //    }
  //  else {
  //    fcol = color(255, 000, 000);
  //    }
  //}
  
void display() {
    fill(fCol); 
        if (ripe == false) {
      fCol = color(255);
      }
    else {
      fCol = color(255, 000, 000);
      }
    //circle(posX, posY, radius);
    ellipse(posX, posY, radius, radius);
}

void picked(){
      if (picked) {
    posY = posY + velY;
  }
  
  if (posY >= height-15) {
    velY = 0;
  }
  
}

//void mousePressed(){
//   if (ripe){
//     picked = true;
//   }
   
//   else {
//     picked = false;
//     // fruit shakes? text appears saying its not ripe yet
//   }
//}

//void picked(){
//    if (ripe) {
//    posY = posY + velY;
//       if (posY >= height-15) {
//    velY = 0; }   
//  }
//}

}
