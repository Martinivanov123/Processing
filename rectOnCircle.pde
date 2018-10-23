void setup(){
  size(700, 600);
}

int xCirc = 350;
int yCirc = 300;
int r = 300;

void draw(){
  float d = dist(xCirc - 150, yCirc - 20, mouseX, mouseY);
  
  boolean isOnRect = mouseX > (xCirc - 150) && mouseX < (xCirc - 150) + 300 && mouseY > (yCirc - 20) && mouseY < (yCirc - 20) + 50; 
  boolean isOnCirc = d< r;
  
  if(isOnRect && isOnCirc){
    background(#0000ff);
  }
  
  else{
    fill(#00ff00);
    background(#ffffff);
  }
  
  ellipse(xCirc, yCirc, r, r);
  fill(#00ff00);
  rect(xCirc - 150, yCirc - 20, 300, 50);
}
