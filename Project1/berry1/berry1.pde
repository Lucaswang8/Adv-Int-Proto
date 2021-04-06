float posX, posY;
float radius;
float bCol;
boolean displayBerry = false;
int points;


void setup() {

  size (800, 600);
  posX = width/2;
  posY = height/2;
  radius = random(10, 100);
  bCol = random (0, 255);
  points = 0;
}

void draw() {

  Berry();
}

void Berry() {

  //Draw berry
  background(100);
  ellipse(posX, posY, radius, radius);

  //disappears when clicked
  if (displayBerry) {
    noFill();
    noStroke();
 
  } else {
    fill(bCol);
    stroke(0);
    strokeWeight(1);

  }
  
  
  //Counter
  textSize(21);
  fill(255);
  text ( "Berries : " + points , 10, 20 );

}

void mouseClicked () {
  displayBerry = true;
  points = points + 1;
  
}
