

float angle;
float r = 200;

Table table;

PImage earth;
PShape globe;

void setup() {
  size(600, 600, P3D);
  earth = loadImage("earth2.jpg");
  //header tells processing that the data has a header. So parse it by name
  table = loadTable("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.csv", "header");

  noStroke();
  globe = createShape(SPHERE, r);
  globe.setTexture(earth);
}


void draw() {

  if (mouseX < 200) {
    background(0);
  } else
  {
    background(255);
  }
  println(mouseX);

  //image(earth,0,0);
  translate(width*0.5, height*0.5);
  rotateY(angle);
  angle += 0.02;



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
    h = map(h, 0, maxh, 10, 100);
    PVector xaxis = new PVector(1, 0, 0);
    float angleb = PVector.angleBetween(xaxis, pos);
    PVector raxis = xaxis.cross(pos);


    pushMatrix();
    translate(x, y, z);
    rotate(angleb, raxis.x, raxis.y, raxis.z);
    if (mag < 1.0 && mag >0) {
      fill(0, 129, 242);
    } else if (mag < 2.5 && mag >= 1.0) {
      fill(0, 20, 242);
    } else if (mag < 4.5 && mag >= 2.5) {
      fill(242, 0, 77);
    } else if (mag >=4.5) {
     fill(242, 0, 4);
    }
  
  box(h, 2, 2);
  popMatrix();
}
}
