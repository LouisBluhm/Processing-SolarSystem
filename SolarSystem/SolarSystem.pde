float r;
float x, y;
float a;
float velocity = 0.001;
float delta = 7;

void setup() {
  size(640, 480);
}

void draw() {
  
  translate(width/2, height/2);
  background(0);
  ellipseMode(CENTER);
  
  r = 100;
  x = 0;
  y = 0;
  
  a += velocity * delta;
  float xpos = x + r * cos(a);
  float ypos = y + r * sin(a);
  
  ellipse(xpos, ypos, 3, 3);
 
}