class Planet {
  
  float radius;
  float x, y;
  float a, b;
  float velocity;
  float delta = 7;
  float planetX, planetY;
  float moonX, moonY;
  float d;
  color c;
  
  Planet(float r, float x_orbit, float y_orbit, float v, float diameter, color planetColor) {
    
    radius = r;
    x = x_orbit;
    y = y_orbit;
    velocity = v;
    d = diameter;
    c = planetColor;
    
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
    
    void info(String planetNamePosition, String moonNamePosition) {
      textSize(12);
      fill(255);
      text(planetNamePosition, planetX + 5, planetY + 10);
      textSize(7);
      text(moonNamePosition, moonX, moonY);
    }
    
    void display() {
      
      fill(c);
      ellipseMode(CENTER);
      ellipse(planetX, planetY, d, d);
      
      //debugging
      stroke(255);
      strokeWeight(0.1);
      line(planetX, planetY, 0, 0);
      line(moonX, moonY, planetX, planetY);
      
    }
    
    void stats() {
      

      
    }
    


}