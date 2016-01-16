Planet planet1, planet2, planet3;
String[] planetName = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
String[] moonName = {"The Moon", "Iota"};

void setup() {
  size(640, 480);
  planet1 = new Planet(50, 0, 0, 0.001, 5, color(0, 255, 0));
  planet2 = new Planet(70, 0, 0, 0.0006, 4, color(255, 200, 50));
  planet3 = new Planet(140, 0, 0, 0.0003, 8, color(100, 100, 100));
}

void draw() {
  
  translate(width/2, height/2);
  background(0);
  fill(255, 255, 170);
  
  sun();
 
  planet1.orbit();
  planet1.display();
  planet1.moon(7, 2, 2);
  planet1.info(planetName[2], moonName[0]);
    
  planet2.orbit();
  planet2.display();
  planet2.moon(10, 3, 5);
  planet2.info(planetName[3], moonName[1]);
    
  planet3.orbit();
  planet3.display();
 
}

void sun() {
  
  fill(255, 255, 190);
  ellipse(0, 0, 50, 50);
  
}