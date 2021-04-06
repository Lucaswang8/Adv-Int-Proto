import processing.serial.*;

Serial myConnection;

float spiralMap = 0;

void setup() {
  size(1920, 1080);
  //frameRate(1000);
  
  
  printArray(Serial.list());
  myConnection = new Serial(this, Serial.list()[0], 9600);
  myConnection.bufferUntil('\n');
}

void draw() {
  println("Framerate: " + frameRate);
  background(0);
  translate(width/2, height/2);
  
  float wave = sin(radians(frameCount));
  float w = wave*map(mouseX,0,height,spiralMap,0);
  //float w = wave*spiralMap;
  
  for (int i = 0; i <500; i++) {
    rotate(50);
    line(850, i-w/2, -850, i++);
    stroke(255,255,255);
    line(-850, -i+w, 550, i++);
    stroke(255,255,0);
    line(-850, i-w, 850, i++);
  
  }
}

void serialEvent(Serial conn){
  String fromSerial = conn.readString();
  spiralMap = float(fromSerial);
  
  println( fromSerial );
  
}
