

float angle;
float r = 200;

Table table;

PImage earth;
PShape globe;
float rSpeed;

void setup() {
  size(600, 600, P3D);
  earth = loadImage("earth2.jpg");
  //header tells processing that the data has a header. So parse it by name
  table = loadTable("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.csv", "header");

  noStroke();
  globe = createShape(SPHERE, r);
  globe.setTexture(earth);
  
  colorMode(HSB,360,100,100,100);
}


void draw() {

  background(0);
  
  //camera(0,0,0,0,0,0,0,1,0);

  println(mouseX, mouseY);

  //image(earth,0,0);
  translate(width*0.5, height*0.5);
  rotateY(angle);
  rSpeed = map(mouseX, 0, 600, 0,0.1);
  angle += rSpeed;



  lights();
  fill(200);
  noStroke();

  shape(globe);

  for (TableRow row : table.rows()) {
    float lat = row.getFloat("latitude");
    float lon = row.getFloat("longitude");
    float mag = row.getFloat("mag");

    //converting lat & long to XYZ coordinates
    float theta = radians(lat);
    float phi = radians(lon) + PI;
    float x = r * cos(theta) * cos(phi);
    float y = -r * sin(theta);
    float z = -r * cos(theta) * sin(phi);
    PVector pos = new PVector(x, y, z);

    float h = pow(10, mag);
    float maxh = pow(10, 7);
    h = map(h, 0, maxh, 10, 300);
    PVector xaxis = new PVector(1, 0, 0);
    float angleb = PVector.angleBetween(xaxis, pos);
    PVector raxis = xaxis.cross(pos);

    //coloring based on mag
    pushMatrix();
    translate(x, y, z);
    rotate(angleb, raxis.x, raxis.y, raxis.z);
    float magHue = map(mag, 0,7,23,360);
    fill(magHue, 100,100,100);
    
    float pot = map(mouseX, 0, 600, 0, 7);
    //seeing data of different mag
      if (mag > pot) {
        fill(magHue, 100, 100, 1);
      }
    

    box(h, 2, 2);
    popMatrix();
    
    //how to make pot text appear?
    //fill(255);  
    //text(pot, 10, 10,10);
  }
}
