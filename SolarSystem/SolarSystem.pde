Planet earth, mars;

void setup() {
  size(640, 480);
  earth = new Planet(50, 0, 0, 0.001, 5, color(0, 255, 0));
  mars = new Planet(70, 0, 0, 0.0006, 4, color(255, 200, 50));
}

void draw() {
  
  translate(width/2, height/2);
  background(0);
  ellipse(0, 0, 50, 50);
  
  earth.orbit();
  earth.display();
  mars.orbit();
  mars.display();
  
  //r = 10;
  //a += velocity * 5 * delta;
  //float xpos2 = xpos + r * cos(a);
  //float ypos2 = ypos + r * sin(a);
  //ellipse(xpos2, ypos2, 3, 3);
  ////line(xpos2, ypos2, xpos, ypos);
 
}