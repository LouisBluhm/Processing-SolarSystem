class Planet {
  
  float radius;
  float x, y;
  float a, b;
  float velocity;
  float delta = 7;
  float planetX, planetY;
  float moonX, moonY;
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
    
    void moon(float moonRadius, float moonDiameter, float parentOrbitSpeed) {
      
      b += velocity * delta  * parentOrbitSpeed;
      moonX = planetX+x + moonRadius * cos(b);
      moonY = planetY+y + moonRadius * sin(b);
      ellipse(moonX, moonY, moonDiameter, moonDiameter);
      
    }
    
    void display() {
      
      ellipseMode(CENTER);
      ellipse(planetX, planetY, d, d);
      
    }
    


}