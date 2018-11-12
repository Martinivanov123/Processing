PImage speedometer;
float x0;
float y0;
float len = 200;
float kmh = 0; 

void setup(){
  size(600, 600);
  speedometer = loadImage("speed.png");
  x0 = 308;
  y0 = 295;
}

void draw(){
  image(speedometer, 0, 0, width, height);
  
  stroke(#ff0000);
  strokeWeight(6);
  
  float angle = radians((kmh * 265/100) + 140);
  float x1 = len * cos(angle) + x0;
  float y1 = len * sin(angle) + y0;
  
  if(keyPressed){
    kmh++;
  }
  
  else{
    kmh--;
  }
  
  if(kmh > 100){
    kmh = 100;
  }
  
  if(kmh < 0){
    kmh = 0;
  }
  
  line(x0, y0, x1, y1);
  //println(mouseX + " " + mouseY);
}
