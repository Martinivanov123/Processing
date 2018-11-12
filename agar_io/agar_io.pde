float x = 350;
float y = 300;

int x1 = 200;
int y1 = 400;
int x1Speed = 1;
int y1Speed = 1;

int r = 50;
int r1 = 40;

float red = 255;
float green = 255;
float blue = 0;

void setup(){
  size(700, 600);
  strokeWeight(4);
}

void draw(){
  background(red, green, blue);
  ellipse(x, y, 2*r, 2*r);
  ellipse(x1, y1, 2*r1, 2*r1);
  
  if(keyPressed && keyCode == UP){
    y1 -= y1Speed;
  }
  
  else if(keyPressed && keyCode == DOWN){
    y1 += y1Speed;
  }
  
  else if(keyPressed && keyCode == LEFT){
    x1 -= x1Speed;
  }
  
  else if(keyPressed && keyCode == RIGHT){
    x1 += x1Speed;
  }
  
  if(y1 < r1){
    y1 = r1;
  }
  
  if(y1 > height - r1){
    y1 = height - r1;
  }
  
  if(x1 < r1){
    x1 = r1;
  }
  
  if(x1 > width - r1){
    x1 = width - r1;
  }
  
  float d = dist(x, y, x1, y1);
  if(d < r + r1){
    r1 = r1 + 10;
    x = random(0, 700);
    y = random(0, 600);
    
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
    
    x1Speed++;
    y1Speed++;
  }
}
