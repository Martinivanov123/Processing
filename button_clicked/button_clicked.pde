void setup(){
  size(800, 600);
  stroke(#2222ff);
  strokeWeight(2);
}

int x = 200;
int y = 80;
int w = 200;
int h = 50;

void draw(){
  ellipse(x, y, w, h);
  if(mouseX >= x - w/2 &&
     mouseX <= x + w/2 &&
     mouseY >= y - h/2 &&
     mouseY <= y + h/2){
    fill(#ffff22);
  }
  
  else{
    fill(#ffffff);
  }
  
  if(mousePressed && (mouseX >= x - w/2 && mouseX <= x + w/2 && mouseY >= y - h/2 && mouseY <= y + h/2)){
     
     }
}
