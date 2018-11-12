void setup(){
  size(600, 600, P3D);
}

float naklon = 4;
float transX;
float transY;
float red = 0;
float green = 0;
float blue = 0;

void draw(){
  background(50);
  stroke(red, green, blue);
  transX = lerp(transX, mouseX, 0.05);
  transY = lerp(transY, mouseY, 0.05);
  translate(transX, transY, 20);
  rotate(PI/naklon);
  sphere(100);
  if(keyPressed && keyCode == LEFT){
    naklon -= 0.5;
    if(naklon == 0.5){
      naklon--;
    }
  }
  
  else if(keyPressed && keyCode == RIGHT){
    naklon += 0.5;
    if(naklon == -0.5){
      naklon++;
    }
  }
  
  if(keyPressed && key == 'r'){
    map(red, 0, width, 0, 255);
  }
  
}
