int red = 0;
int green = 0;
int blue = 0;

void setup(){
  size(600, 600);
}

void draw(){
  background(red, green, blue);
  
  if(keyPressed && key == 'r' && red <= 255){
    red++;
  }
  
  if(keyPressed && key == 'g' && green <= 255){
    green++;
  }
  
  if(keyPressed && key == 'b' && blue <= 255){
    blue++;
  }
  
  if(keyPressed && key == 'q'){
    red = 0;
    green = 0;
    blue = 0;
  }
  
  if(keyPressed && key == '-'){
    red--;
  }
  
  if(keyPressed && key == 'm'){
    green--;
  }
  
  if(keyPressed && key == '.'){
    blue--;
  }
}
