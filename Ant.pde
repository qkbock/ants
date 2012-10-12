class Ant {
  float antAngle;
  float antX;
  float antY;
  float antXVel;
  float antYVel;

  Ant(){
//  antX = random(0, width);
//  antY = random(0, height);
  antXVel = random(-2, 2);
  antYVel = random(-2, 2);
  antAngle = atan2(antYVel, antXVel);
  }
  
  void constructor(){
  antXVel = random(-2, 2);
  antYVel = random(-2, 2);
  antAngle = atan2(antYVel, antXVel);
  }
  
  void setLocation(float mousePressedX, float mousePressedY){
    antX = mousePressedX;
    antY = mousePressedY;
  }

  void display(){
    stroke(0);
    strokeWeight(1);
    fill(0);
    pushMatrix();
    translate(antX, antY);
    rotate(antAngle);
    ellipse(0, 0, 10, 5);
    ellipse(8, 0, 5, 5);
    line(-3, -5, -3, 5);
    line(0, -5, 0, 5);
    line(3, -5, 3, 5);
    line(8, 0, 12, -4);
    line(8, 0, 12, 4);
    popMatrix();
    
    
  }
  
  void move(){
    antX += antXVel;
    antY += antYVel;
    
    if(antX > width || antX < 0){
      antXVel *= -1;
      antAngle = atan2(antYVel, antXVel);
    }
    if(antY > width || antY < 0){
      antYVel *= -1;
      antAngle = atan2(antYVel, antXVel);
    }
  }
  


}
