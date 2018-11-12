void setup(){
  size(800, 500);
  strokeWeight(10);
  stroke(#1825FF);
  fill(#000000);
}

int x = 0;
int y = 100;
int xSpeed = 4;

void draw(){
  background(100, 200, 300);
  ellipse(x, y, 20, 20);
  x = x + xSpeed;
  
  if(x > width){
    xSpeed = -xSpeed;
  }
  
  if(x < 0){
    xSpeed = -xSpeed;
  }
  
  if(keyPressed && keyCode == UP){
    y = y - 10;
    stroke(random(0, 255),random(0, 255),random(0, 255));
  }
  
  if(keyPressed && keyCode == DOWN){
    y = y + 10;
    stroke(random(0, 255),random(0, 255),random(0, 255));
  }
  
  if(keyPressed && key == '+'){
    if(xSpeed > 0) xSpeed += 1;
    if(xSpeed <= 0) xSpeed -= 1;
  }
  
  if(keyPressed && key == '-'){
    if(xSpeed > 0) xSpeed -= 1;
    if(xSpeed <= 0) xSpeed += 1;
  }
  
  if(y <= 0){
    y = 0;
  }
  
  if(y >= height){
    y = height;
  }
}
