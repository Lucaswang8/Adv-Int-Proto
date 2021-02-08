float circleY;
float ySpeed = 7;
boolean falling = false;

void setup(){
  size(640, 360);
}

void draw(){
  
  // fruit properties
  fruit(width/2,h,30,30);
  pickedFruit (height/2, 7);
  basket(width/2-200/2,height-80, 200,80);
  
}

// mouseclick on fruits
void mousePressed() {
  falling = true;
}

void fruit(float X, float Y, float sizeW, float sizeY){
  
  background(51);
  fill(255);
  ellipse(X,Y,sizeW, sizeY);
  
}

// not working
void pickedFruit (float circleY, float ySpeed){
      if (falling) {
    circleY = circleY + ySpeed;
  }
  
    if (circleY >= height-15) {
    ySpeed = 0;
  }
}

void basket(float basketX, float basketY, float basketW, float basketH){
  fill(120,120,120,150);
  stroke(0);
  rect(basketX,basketY, basketW,basketH);
}
