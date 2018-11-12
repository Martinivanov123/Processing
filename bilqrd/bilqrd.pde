void setup(){
  size(800, 500);
  strokeWeight(10);
  stroke(#1825FF);
  fill(#000000);
}

int x = 0;
int y = 100;

int xSpeed = 1;
int ySpeed = 1;

float red = 100;
float green = 200;
float blue = 300;
void draw(){
  background(red, green, blue);
  ellipse(x, y, 20, 20);
  x = x + xSpeed;
  y = y + ySpeed;
  
  if(y >= height){
    ySpeed = -ySpeed;
  }
  
  if(x >= width){
    xSpeed = -xSpeed;
  }
  
  if(y <= 0){
    ySpeed = -ySpeed;
  }
  
  if(x <= 0){
    xSpeed = -xSpeed;
  }
  
  if(keyPressed && key == '+'){
    if(xSpeed > 0) xSpeed += 1;
    if(xSpeed <= 0) xSpeed -= 1;
    
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
  }
  
  if(keyPressed && key == '-'){
    if(xSpeed > 0) xSpeed -= 1;
    if(xSpeed <= 0) xSpeed += 1;
    
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
  }
  
  if(keyPressed && key == 'p'){
    if(ySpeed > 0) ySpeed += 1;
    if(ySpeed <= 0) ySpeed -= 1;
    
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
  }
  
  if(keyPressed && key == 'm'){
    if(ySpeed > 0) ySpeed -= 1;
    if(ySpeed <= 0) ySpeed += 1;
    
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
  }
}
