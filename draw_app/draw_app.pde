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
    stroke(#ff0000);
  }
  
  if(x < width/2 && y > height/2){
    stroke(#ffff00);
  }
  
  if(x > width/2 && y > height/2){
    stroke(#00ff00);
  }
  
  if(x > width/2 && y < height/2){
    stroke(#0000ff);
  }
}
