void setup(){
  size(800, 600);
}

int x = 400;
int y = 300;

int x1 = x + 100;
int y1 = y + 100;

int x2 = x + 200;
int y2 = y + 200;

int d1 = 30;
int d2 = 50;
int d3 = 10;

int xSpeed = 1;
int ySpeed = 1;

int xSpeed1 = 2;
int ySpeed1 = 2;

int xSpeed2 = 3;
int ySpeed2 = 3;
void draw(){
  background(75);
  
  ellipse(x, y, d1, d1);
  ellipse(x1, y1, d2, d2);
  ellipse(x2, y2, d3, d3);
  
  line(x, y, x1, y1);
  line(x1, y1, x2, y2);
  line(x, y, x2, y2);
  
  x += xSpeed;
  y += ySpeed;
  
  x1 += xSpeed1;
  y1 += ySpeed1;
  
  x2 += xSpeed2;
  y2 += ySpeed2;
  
  if(y >= height || y <=0){
    ySpeed = -ySpeed;
  }
  
  if(x >= width || x <= 0){
    xSpeed = -xSpeed;
  }
  
  if(y1 >= height || y1 <=0){
    ySpeed1 = -ySpeed1;
  }
  
  if(x1 >= width || x1 <= 0){
    xSpeed1 = -xSpeed1;
  }
  
  if(y2 >= height || y2 <=0){
    ySpeed2 = -ySpeed2;
  }
  
  if(x2 >= width || x2 <= 0){
    xSpeed2 = -xSpeed2;
  }
}
