class Planet {
  
  float radius;
  float x, y;
  float a;
  float velocity;
  float delta = 7;
  float planetX, planetY;
  float d;
  
  Planet(float r, float x_orbit, float y_orbit, float v, float diameter, color c) {
    
    radius = r;
    x = x_orbit;
    y = y_orbit;
    velocity = v;
    d = diameter;
    
  }
  
    void orbit() {
      
      a += velocity * delta;
      planetX = x + radius * cos(a);
      planetY = y + radius * sin(a);
      
    }
    
    void display() {
      
      ellipseMode(CENTER);
      ellipse(planetX, planetY, d, d);
      
    }

}