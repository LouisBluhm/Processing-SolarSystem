Planet mercury, venus, earth, mars, jupiter, saturn, uranus, neptune;
String[] planetName = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
String[] moonName = {"", "The Moon", "Phobos", "Io", "Titan", "Ariel", "Triton"};

void setup() {
  size(700, 700);
  smooth(8);
  mercury = new Planet(32, 0, 0, 0.0025, 1, color(100, 255, 0));
  venus = new Planet(40, 0, 0, 0.0012, 3, color(200, 200, 0));
  earth = new Planet(45, 0, 0, 0.0011, 3.5, color(0, 200, 200));
  mars = new Planet(50, 0, 0, 0.001, 2.5, color(200, 100, 0));
  jupiter = new Planet(100, 0, 0, 0.0009, 15, color(100, 100, 50));
  saturn = new Planet(150, 0, 0, 0.0005, 14, color(150, 150, 50));
  uranus = new Planet(200, 0, 0, 0.0003, 6, color(50, 100, 255));
  neptune = new Planet(300, 0, 0, 0.0001, 5.5, color(0, 50, 255)); 
}

void draw() {
  translate(width/2, height/2);
  background(0);
  fill(255, 255, 170);
  
  sun();
 
  mercury.orbit();
  mercury.display();
  mercury.info(planetName[0], moonName[0]);
  
  venus.orbit();
  venus.display();
  venus.info(planetName[1], moonName[0]);
  
  earth.orbit();
  earth.moon(5, 1, 5);
  earth.display();
  earth.info(planetName[2], moonName[1]);
  
  mars.orbit();
  mars.moon(4, 1, 3);
  mars.moon(5, 1, 3.1);
  mars.display();
  mars.info(planetName[3], moonName[2]);
  
  jupiter.orbit();
  jupiter.moon(25, 1, 2);
  jupiter.display();
  jupiter.info(planetName[4], moonName[3]);
  
  saturn.orbit();
  saturn.moon(26, 1, 3);
  saturn.display();
  saturn.info(planetName[5], moonName[4]);
  
  uranus.orbit();
  uranus.moon(20, 1, 3);
  uranus.display();
  uranus.info(planetName[6], moonName[5]);
  
  neptune.orbit();
  neptune.moon(20, 1, 3);
  neptune.display();
  neptune.info(planetName[7], moonName[6]);
  
  info();
  button(0, -330, "Pause", 40);
  button(50, -330, "Simple", 42);
  button(102, -330, "Detailed", 50);
}

void button(float x, float y, String text, float textLength) {
  fill(50, 50, 255);
  rect(x-5, y+5, textLength, -15);
  fill(255);
  text(text, x, y); 
}

void sun() {
  fill(255, 255, 190);
  ellipse(0, 0, 50, 50);
}

void info() {
  textSize(10);
  text("Not all distances, orbital speeds, sizes etc. correct", -330, -330); 
}