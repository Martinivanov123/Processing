int dice = 6;

void setup(){
  size(500, 500);
}

void draw(){
  int x = width/2;
  int y = height/2;
  int d = 100;
  
  background(#72DEF0);
  if(mousePressed || (keyPressed && key == ' ')){
    dice = (int)random(1, 7);
  }
  
  if(dice == 1){
    ellipse(x, y, d, d);
  }
  
  else if(dice == 2){
    ellipse(100, 100, d, d);
    ellipse(2*x - 100, 2*y - 100, d, d);
  }
  
  else if(dice == 3){
    ellipse(100, 100, d, d);
    ellipse(x, y, d, d);
    ellipse(2*x - 100, 2*y - 100, d, d);
  }
  
  else if(dice == 4){
    ellipse(100, 100, d, d);
    ellipse(2*x - 100, 2*y - 100, d, d);
    ellipse(400, 100, d, d);
    ellipse(100, 2*y - 100, d, d);
  }
  
  else if(dice == 5){
    ellipse(100, 100, d, d);
    ellipse(2*x - 100, 2*y - 100, d, d);
    ellipse(400, 100, d, d);
    ellipse(100, 2*y - 100, d, d);
    ellipse(x, y, d, d);
  }
  
  else if(dice == 6){
    ellipse(100, 100, d, d);
    ellipse(2*x - 100, 2*y - 100, d, d);
    ellipse(400, 100, d, d);
    ellipse(100, 2*y - 100, d, d);
    ellipse(100, y, d, d);
    ellipse(400, y, d, d);
  }
}
