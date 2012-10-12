ArrayList antHole;
Grass[] grass;
Ant[] ants;
int numberOfAnts;
int amountOfGrass;
boolean drawHole; 
float mousePressedX;
float mousePressedY;
PImage grassImg; 

void setup(){
  size(500, 500);
  smooth();
  stroke(1);
  grassImg = loadImage("grass.png");
  drawHole = false;
  
//  amountOfGrass = 100000;
  numberOfAnts = 100;
  
//  grass = new Grass[amountOfGrass];
//  for(int i = 0; i < amountOfGrass; i++){
//    grass[i] = new Grass();
//  }
  
  ants = new Ant[numberOfAnts];
  for(int i = 0; i < numberOfAnts; i++){
    ants[i] = new Ant();
  }
}

void draw(){
  background(117, 59, 1); 
  image(grassImg, 0, 0);
//  for(int i = 0; i < amountOfGrass; i++){
//    grass[i].display();
//  }
  
drawHole(mousePressedX, mousePressedY);
  if(drawHole == true){
    for(int i = 0; i < numberOfAnts; i++){  
      ants[i].display();
      ants[i].move();
    }
  }
}

void mouseReleased(){
  drawHole = true;
  mousePressedX = mouseX;
  mousePressedY = mouseY;
  for(int i = 0; i < numberOfAnts; i++){  
    ants[i].setLocation(mousePressedX, mousePressedY);
    ants[i].constructor();
  }


}

void drawHole(float holeLocationX, float holeLocationY){
  if(drawHole == true){
    fill(64, 33, 1);
    strokeWeight(2);
    stroke(32, 16, 1);
    ellipse(holeLocationX, holeLocationY, 25, 25);
  }
}
