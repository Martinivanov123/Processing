void setup(){
  size(700, 600);
  strokeWeight(3);
}

int x = 100;
int y = 150;
int w = 200;
int h = 50;

int x1 = 200;
int y1 = 300;

void draw(){
  boolean isOnButton1 = mousePressed && mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h;
  boolean isOnButton2 = mousePressed && mouseX > x1 && mouseX < x1+w && mouseY > y1 && mouseY < y1+h;
  
  if(isOnButton1 || isOnButton2){
    background(#00ffff);
  }
  
  else{
    background(#ffffff);
  }
  
  fill(#00ff00);
  rect(x, y, w, h);
  rect(x1, y1, w, h);
}
