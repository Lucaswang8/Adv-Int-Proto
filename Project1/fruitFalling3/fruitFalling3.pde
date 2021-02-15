//Fruit myFruit;
Basket myBasket;

ArrayList<Fruit> myFruits = new ArrayList<Fruit>();

void setup() {
  size (640, 360);
  
  //myFruit = new Fruit();
  
  for(int i = 0; i < 6; i++) {
    myFruits.add(new Fruit());
  }
}

void draw(){
  background(100);
  myBasket.display();
  
  for(Fruit myFruit : myFruits){
  myFruit.display();
  }
  
  
  
  //how to make sure fruits are not overlapping

  //how to make the fruits fall
}
