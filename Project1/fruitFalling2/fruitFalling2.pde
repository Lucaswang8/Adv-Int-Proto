float circleY;
float ySpeed = 7;
boolean falling = false;
float basketW;
float basketH;

void setup(){
  size(640, 360);
  circleY = height/2;
  basketW = 200;
  basketH = 80;
}

void draw(){
  
  // fruit properties
  background(51);
  fill(255);
  ellipse(width/2,circleY,30,30);
  
  //falling of fruit
  if (falling) {
    circleY = circleY + ySpeed;
  }
  
  if (circleY >= height-15) {
    ySpeed = 0;
  }
  
// println(circleY);


  //basket properties
  fill(120,120,120,150);
  stroke(0);
  rect(width/2-basketW/2,height-basketH, basketW,basketH);
}

// mouseclick on fruits
void mousePressed() {
  falling = true;
}
