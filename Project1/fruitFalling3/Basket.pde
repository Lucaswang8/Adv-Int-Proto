class Basket{
  float basketW;
  float basketH;

  Basket(){
    basketW = 200;
    basketH = 80;
  }
   

void display() {
  fill(120,120,120,150);
  stroke(0);
  rect(mouseX-basketW/2,height-basketH, basketW,basketH);
  }

}
