void setup(){
  size(1000, 800);
  strokeWeight(10);
}

int x = 500;
int y = 400;

void draw(){
  point(x, y);
  if(keyPressed && keyCode == UP) y--;
  if(keyPressed && keyCode == DOWN) y++;
  if(keyPressed && keyCode == LEFT) x--;
  if(keyPressed && keyCode == RIGHT) x++;
  
  if(x < width/2 && y < height/2){
    stroke(#ff2222);
  }
  
  if(x < width/2 && y > height/2){
    stroke(#ffff22);
  }
  
  if(x > width/2 && y > height/2){
    stroke(#22ff22);
  }
  
  if(x > width/2 && y < height/2){
    stroke(#2222ff);
  }
}
