void setup(){
  size(600, 600);
}

int x = 250;
int y = 100;
int speed = 10;

void draw(){
  background(51);
  drawHuman(x, y);
  
  if(keyPressed && keyCode == UP){
    y -= speed;
  }
  
  if(keyPressed && keyCode == DOWN){
    y += speed;
  }
  
  if(keyPressed && keyCode == LEFT){
    x -= speed;
  }
  
  if(keyPressed && keyCode == RIGHT){
    x += speed;
  }
}

void drawHuman(int x, int y){
  ellipse(x, y, 50, 50);
  rectMode(CENTER);
  rect(x, y+100, 50, 150);
}
