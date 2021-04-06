//Fruit myFruit;
Basket myBasket;

ArrayList<Fruit> myFruits = new ArrayList<Fruit>();

void setup() {
  size (640, 360);

  //myFruit = new Fruit();

  for (int i = 0; i < 6; i++) {
    myFruits.add(new Fruit());
  }
}

void draw() {
  background(100);
  // myBasket.display();

  for (Fruit myFruit : myFruits) {
    myFruit.display();

    myFruit.picked();
  }
}

void mouseReleased() {
    for (Fruit myFruit : myFruits) {
      if(myFruit.radius >= dist(mouseX, mouseY, myFruit.posX, myFruit.posY)) {
          myFruit.picked = true;
      }
    
  }
}
