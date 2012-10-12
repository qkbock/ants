class Grass{
  float grassThickness;
  float grassLength;
  float r;
  float grassAngle;
  float grassX;
  float grassY;
  
  Grass(){
    grassX = random(0, width);
    grassY = random(0, height);
    grassThickness = random(.2, 1.5);
    grassLength = random(0, 8);
    r = random(2, 130);
    grassAngle = random(0, 2*PI);
  }
  
  void display(){
    strokeWeight(grassThickness);
    stroke(r, 165, 2);
    pushMatrix();
    translate(grassX, grassY);
    rotate(grassAngle);
    line(0, 0, grassLength, 0);
    popMatrix();
  }
}
