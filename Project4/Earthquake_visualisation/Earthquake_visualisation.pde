float lon = 144.9631;
float lan = -37.8136;

float angle;
float r = 200;

Table table;

PImage earth;
PShape globe;

void setup() {
  size(600,600, P3D);
  earth = loadImage("earth2.jpg");
  //table = loadTable("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_day.csv", "header");
  table = loadTable("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.csv", "header");
  
  noStroke();
  globe = createShape(SPHERE,r);
  globe.setTexture(earth);
}


void draw() {
  background(0);
  //image(earth,0,0);
  translate(width*0.5, height*0.5);
  rotateY(angle);
  angle += 0.05;
  
  lights();
  fill(200);
  noStroke();
  
  shape(globe);
  
  for (TableRow row : table.rows()) {
    float lat = row.getFloat("latitude");
    float lon = row.getFloat("longitude");
    float mag = row.getFloat("mag");

    
    float theta = radians(lat);
    float phi = radians(lon) + PI;
    float x = r * cos(theta) * cos(phi);
    float y = -r * sin(theta);
    float z = -r * cos(theta) * sin(phi);
    PVector pos = new PVector(x,y,z);
    
    float h = pow(10, mag);
    float maxh = pow(10,7);
    h = map(h,0, maxh, 10,100);
    PVector xaxis = new PVector(1,0,0);
    float angleb = PVector.angleBetween(xaxis, pos);
    PVector raxis = xaxis.cross(pos);
    
    
    pushMatrix();
    translate(x,y,z);
    rotate(angleb, raxis.x, raxis.y, raxis.z);
    fill(255);
    box(h,5,5);
    popMatrix();
  
  }
  

}
