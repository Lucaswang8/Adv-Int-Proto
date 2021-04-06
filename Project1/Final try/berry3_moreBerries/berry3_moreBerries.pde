
//Blueberry[] blueberries = new Blueberry[int(random(5, 15))];
ArrayList<Blueberry> blueberries;
int bluepoints = 0;

ArrayList<Blackberry> blackberries;
int blackpoints = 0;

ArrayList<Raspberry> raspberries;
int rasppoints = 0;

ArrayList<Strawberry> strawberries;
int strawpoints = 0;

PImage bushes;
PImage blackberry;
PImage blueberry;
PImage raspberry;
PImage strawberry;

void setup() {

  bushes = loadImage("background.jpg");
  blackberry = loadImage("blackberry.png");
  blueberry = loadImage("blueberry.png");
  raspberry = loadImage("raspberry.png");
  strawberry = loadImage("strawberry.png");
  
  size (800, 600);
  blueberries = new ArrayList<Blueberry>();
  blackberries = new ArrayList<Blackberry>();
  raspberries = new ArrayList<Raspberry>();
  strawberries = new ArrayList<Strawberry>();
  float q = random(1, 5);

  for (int i = 0; i < q; i++) {
    blueberries.add(new Blueberry());
    blackberries.add(new Blackberry());
    raspberries.add(new Raspberry());
    strawberries.add(new Strawberry());
  }
}



void draw() {

  background(0);
  image(bushes,100,280);
  fill(#b2f7c5);
  noStroke();
  rect(0,0,180,100);

  for (Blueberry b : blueberries) {
    b.display();
    b.clicked();
    
    
     textSize(21);
     fill(#181fa1);
     text("Blueberries: " + bluepoints, 10, 25);
  }
  
    for (Blackberry bl : blackberries) {
    bl.display();
    bl.clicked();
    
     textSize(21);
     fill(10);
     text("Blackberries: " + blackpoints, 10, 45);
  }
   
     for (Raspberry rp : raspberries) {
    rp.display();
    rp.clicked();
    
     textSize(21);
     fill(245,66,200);
     text("Raspberries: " + rasppoints, 10, 65);
  }
  
      for (Strawberry sw : strawberries) {
    sw.display();
    sw.clicked();
    
     textSize(21);
     fill(245, 66, 90);
     text("Strawberries: " + rasppoints, 10, 85);
  }
   
}


void mouseReleased() {

  //blueberry
  for (Blueberry b : blueberries) {
    if (b.radius > dist(mouseX, mouseY, b.posX, b.posY)) {
      b.displayBerry = true;
      bluepoints = bluepoints + 1;
      break;
    }
  }
  
  //blackberry
    for (Blackberry bl : blackberries) {
    if (bl.radius > dist(mouseX, mouseY, bl.posX, bl.posY)) {
      bl.displayBerry = true;
      blackpoints = blackpoints + 1;
      break;
    }
  }
  
  //raspberry
     for (Raspberry rp : raspberries) {
    if (rp.radius > dist(mouseX, mouseY, rp.posX, rp.posY)) {
      rp.displayBerry = true;
      rasppoints = rasppoints + 1;
      break;
    }
  }
  
    //strawberry
     for (Strawberry sw : strawberries) {
    if (sw.radius >= dist(mouseX, mouseY, sw.posX, sw.posY)) {
      sw.displayBerry = true;
      strawpoints = strawpoints + 1;
      break;
    }
  }
  
}

// how to delete ball from top instead of bottom
