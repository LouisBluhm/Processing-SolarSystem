class Planet {
  
  float radius;
  float x, y;
  float a, b;
  float velocity;
  float delta = 7;
  float planetX, planetY;
  float moonX, moonY;
  float d;
  int num;
  color c;
  
  Planet(float r, float x_orbit, float y_orbit, float v, float diameter, color planetColor, int planetNum) {
    
    radius = r;
    x = x_orbit;
    y = y_orbit;
    velocity = v;
    d = diameter;
    c = planetColor;
    num = planetNum;
    
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
      textSize(7);
      text("moon", moonX, moonY);
      
    }
    
    void display() {
      
      fill(c);
      ellipseMode(CENTER);
      ellipse(planetX, planetY, d, d);
      textSize(12);
      text("planet" + num, planetX + 10, planetY + 10);
      
      //debugging
      stroke(255);
      strokeWeight(0.1);
      line(planetX, planetY, 0, 0);
      line(moonX, moonY, planetX, planetY);
      
    }
    


}