float circleY;
float circleX;
float ySpeed = 7;
boolean falling = false;
float basketW;
float basketH;

void setup(){
  size(640, 360);
  circleY = height/2;
  basketW = 200;
  basketH = 80;
  circleX = width/2;
}

void draw(){
  
  // fruit properties
  background(51);
  fill(255);
  ellipse(circleX,circleY,30,30);
  
  //falling of fruit
  if (falling) {
    circleY = circleY + ySpeed;
  }
  
  if (circleY >= height-15) {
    ySpeed = 0;
    circleX = mouseX;
  }
  
// println(circleY);


  //basket properties
  fill(120,120,120,150);
  stroke(0);
  rect(mouseX-basketW/2,height-basketH, basketW,basketH);
}

// mouseclick on fruits
void mousePressed() {
  falling = true;
}
