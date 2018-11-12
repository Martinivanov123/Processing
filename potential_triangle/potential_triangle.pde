void setup(){
  size(600, 600);
}

boolean point1 = false;
boolean point2 = false;
boolean point3 = false;

int px1;
int px2;
int px3;
int py1;
int py2;
int py3;

void draw(){
  if(keyPressed && key == '1'){
    point1 = true;
  }
  
  if(keyPressed && key == '2'){
    point2 = true;
  }
  
  if(keyPressed && key == '3'){
    point3 = true;
  }
  
  if(point1 && mousePressed && mouseButton == LEFT){
    px1 = mouseX;
    py1 = mouseY;
    point1 = false;
  }
  
  if(point2 && mousePressed && mouseButton == LEFT){
    px2 = mouseX;
    py2 = mouseY;
    point2 = false;
  }
  
  if(point1 && mousePressed && mouseButton == LEFT){
    px3 = mouseX;
    py3 = mouseY;
    point3 = false;
  }
  
  triangle(px1, py1, px2, py2, px3, py3);
}
