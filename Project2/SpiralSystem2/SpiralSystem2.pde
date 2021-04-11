import processing.serial.*;

Serial myConnection;

float spiralMap = 0;
float spiralHue = 0;
float spiralBrightness = 0;
float spiralSaturation = 0;


float buttonState = 0;

void setup() {
  size(1920, 1080);
  //frameRate(1000);
  
  colorMode(HSB, 360,100, 100);
  
  printArray(Serial.list());
  myConnection = new Serial(this, Serial.list()[0], 9600);
  myConnection.bufferUntil('\n');
}

void draw() {
  //println("Framerate: " + frameRate);
  background(0);
  
  if (buttonState == 1) {
  
    if (looping) {
      noLoop();
    }
    
    else {
      loop();
    }
    
  } 

  


  float wave = sin(radians(frameCount));
  //float w = wave*map(mouseX,0,height,spiralMap,0);
  float w = wave*spiralMap;
  translate(width/2, height/2);
  for (int i = 0; i <500; i++){
    rotate(50);
    line(850, i-w/2, -850, i++);
    stroke(0,0,100);
    line(-850, -i+w, 550, i++);
    stroke(spiralHue,spiralBrightness,spiralSaturation);
    line(-850, i-w, 850, i++);
 
  }
}

void serialEvent(Serial conn){
  String fromSerial = conn.readString();
  //spiralMap = float(fromSerial);
  
  if(fromSerial != null) {
     //fromSerial = trim(fromSerial);

      String[] data = split(fromSerial, ',');
      printArray(data);
      
      if(data.length == 5){
        buttonState = float(data[0]);
        
        //data[1,2,3,4] = a0,1,2,3 potentiometer
        spiralMap = float(data[1]);
        spiralMap = map(spiralMap, 0, 4096, 0, 2500);
        
        spiralHue = float(data[2]);
        spiralHue = map(spiralHue, 0, 4096, 0, 360);
        spiralBrightness = float(data[3]);
        spiralBrightness = map(spiralBrightness, 0, 4096, 0, 100);
        spiralSaturation = float(data[4]);
        spiralSaturation = map(spiralSaturation, 0, 4096, 0, 100);
     }
      
  }
  

  
  //println( fromSerial );
  
}